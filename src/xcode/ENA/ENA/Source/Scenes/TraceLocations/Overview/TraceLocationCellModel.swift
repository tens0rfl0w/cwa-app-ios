////
// 🦠 Corona-Warn-App
//

import UIKit
import OpenCombine

class TraceLocationCellModel: EventCellModel {

	// MARK: - Init

	init(
		traceLocation: TraceLocation,
		eventProvider: EventProviding,
		onUpdate: @escaping () -> Void
	) {
		self.traceLocation = traceLocation
		self.onUpdate = onUpdate

		eventProvider.checkinsPublisher
			.sink { [weak self] checkins in
				self?.isButtonHiddenPublisher.value = checkins.contains { $0.traceLocationGUID == traceLocation.guid && $0.isActive }
				onUpdate()
			}
			.store(in: &subscriptions)

		updateForActiveState()
		scheduleUpdateTimer()
	}

	// MARK: - Internal

	var isInactiveIconHiddenPublisher = CurrentValueSubject<Bool, Never>(true)
	var isActiveContainerViewHiddenPublisher = CurrentValueSubject<Bool, Never>(true)
	var isButtonHiddenPublisher = CurrentValueSubject<Bool, Never>(true)
	var durationPublisher = CurrentValueSubject<String?, Never>(nil)
	var timePublisher = CurrentValueSubject<String?, Never>(nil)

	var isActiveIconHidden: Bool = false
	var isDurationStackViewHidden: Bool = true

	var date: String? {
		guard let startDate = traceLocation.startDate, let endDate = traceLocation.endDate else {
			return nil
		}

		if !Calendar.current.isDate(startDate, inSameDayAs: endDate) {
			// Multi-day events show the full dates in the time label
			return nil
		}

		let dateFormatter = DateIntervalFormatter()
		dateFormatter.dateStyle = .short
		dateFormatter.timeStyle = .none

		return dateFormatter.string(from: startDate, to: endDate)
	}

	var title: String {
		traceLocation.description
	}

	var address: String {
		traceLocation.address
	}

	var buttonTitle: String = AppStrings.TraceLocations.Overview.selfCheckinButtonTitle

	// MARK: - Private

	private let traceLocation: TraceLocation
	private let onUpdate: () -> Void

	private var subscriptions = Set<AnyCancellable>()

	private var updateTimer: Timer?

	@objc
	private func updateForActiveState() {
		isInactiveIconHiddenPublisher.value = traceLocation.isActive
		isActiveContainerViewHiddenPublisher.value = !traceLocation.isActive

		if let startDate = traceLocation.startDate, let endDate = traceLocation.endDate {
			let endsOnSameDay = Calendar.current.isDate(startDate, inSameDayAs: endDate)

			let dateFormatter = DateIntervalFormatter()
			dateFormatter.dateStyle = traceLocation.isActive && endsOnSameDay ? .none : .short
			dateFormatter.timeStyle = .short

			timePublisher.value = dateFormatter.string(from: startDate, to: endDate)
		} else {
			timePublisher.value = nil
		}

		onUpdate()
	}

	private func scheduleUpdateTimer() {
		updateTimer?.invalidate()
		NotificationCenter.default.removeObserver(self, name: UIApplication.didEnterBackgroundNotification, object: nil)
		NotificationCenter.default.removeObserver(self, name: UIApplication.didBecomeActiveNotification, object: nil)

		guard let endDate = traceLocation.endDate else {
			return
		}

		// Schedule new countdown.
		NotificationCenter.default.addObserver(self, selector: #selector(invalidateUpdatedTimer), name: UIApplication.didEnterBackgroundNotification, object: nil)
		NotificationCenter.default.addObserver(self, selector: #selector(refreshUpdateTimerAfterResumingFromBackground), name: UIApplication.didBecomeActiveNotification, object: nil)

		updateTimer = Timer(fireAt: endDate, interval: 0, target: self, selector: #selector(updateForActiveState), userInfo: nil, repeats: false)
		guard let updateTimer = updateTimer else { return }
		RunLoop.current.add(updateTimer, forMode: .common)
	}

	@objc
	private func invalidateUpdatedTimer() {
		updateTimer?.invalidate()
	}

	@objc
	private func refreshUpdateTimerAfterResumingFromBackground() {
		scheduleUpdateTimer()
	}
    
}
