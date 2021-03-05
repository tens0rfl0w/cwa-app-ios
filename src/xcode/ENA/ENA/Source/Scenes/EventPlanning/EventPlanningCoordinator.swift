//
// 🦠 Corona-Warn-App
//

import UIKit

struct Event {

}

class EventPlanningCoordinator {

	// MARK: - Init

	init(
		store: Store,
		parentNavigationController: UINavigationController
	) {
		self.store = store
		self.parentNavigationController = parentNavigationController
	}

	// MARK: - Internal

	func start() {
		parentNavigationController?.pushViewController(overviewScreen, animated: true)

		#if DEBUG
		if isUITesting {
			if let eventPlanningInfoScreenShown = UserDefaults.standard.string(forKey: "eventPlanningInfoScreenShown") {
				store.eventPlanningInfoScreenShown = (eventPlanningInfoScreenShown != "NO")
			}

		}
		#endif

		if !infoScreenShown {
			showInfoScreen()
		}
	}

	// MARK: - Private

	private let store: Store

	private weak var parentNavigationController: UINavigationController?

	private var infoScreenShown: Bool {
		get { store.eventPlanningInfoScreenShown }
		set { store.eventPlanningInfoScreenShown = newValue }
	}

	// MARK: Show Screens

	private lazy var overviewScreen: EventPlanningOverviewViewController = {
		return EventPlanningOverviewViewController(
			viewModel: EventPlanningOverviewViewModel(),
			onAddEventCellTap: {},
			onEventCellTap: { [weak self] event in
				self?.showEventScreen(event: event)
			}
		)
	}()

	private func showInfoScreen() {
		// Promise the navigation view controller will be available,
		// this is needed to resolve an inset issue with large titles
		var navigationController: ENANavigationControllerWithFooter!
		let viewController = EventPlanningInfoViewController(
			viewModel: EventPlanningInfoViewModel(
				presentDisclaimer: {
					let detailViewController = HTMLViewController(model: AppInformationModel.privacyModel)
					detailViewController.title = AppStrings.AppInformation.privacyTitle
					// hides the footerview as well
					detailViewController.hidesBottomBarWhenPushed = true
					navigationController.pushViewController(detailViewController, animated: true)
				}
			),
			onDismiss: {
				navigationController.dismiss(animated: true)
			}
		)
		// We need to use UINavigationController(rootViewController: UIViewController) here,
		// otherwise the inset of the navigation title is wrong
		navigationController = ENANavigationControllerWithFooter(rootViewController: viewController)
		parentNavigationController?.present(navigationController, animated: true) {
			self.infoScreenShown = true
		}
	}

	private func showEventScreen(event: Event) {
		var navigationController: ENANavigationControllerWithFooter!
		let viewController = DiaryInfoViewController(
			viewModel: DiaryInfoViewModel(
				presentDisclaimer: {
					let detailViewController = AppInformationDetailViewController()
					detailViewController.title = AppStrings.AppInformation.privacyTitle
//					detailViewController.dynamicTableViewModel = AppInformationModel.privacyModel
					detailViewController.separatorStyle = .none
					// hides the footerview as well
					detailViewController.hidesBottomBarWhenPushed = true
					navigationController.pushViewController(detailViewController, animated: true)
				}
			),
			onDismiss: {
				navigationController.dismiss(animated: true)
			}
		)

		/// We need to use UINavigationController(rootViewController: UIViewController) here, otherwise the inset of the navigation title is wrong
		navigationController = ENANavigationControllerWithFooter(rootViewController: viewController)
		parentNavigationController?.present(navigationController, animated: true)
	}

	private func showAddEventScreen(duplicating templateEvent: Event? = nil) {
		var navigationController: ENANavigationControllerWithFooter!

		let viewController = UIViewController()

		/// We need to use UINavigationController(rootViewController: UIViewController) here, otherwise the inset of the navigation title is wrong
		navigationController = ENANavigationControllerWithFooter(rootViewController: viewController)
		parentNavigationController?.present(navigationController, animated: true)
	}

}
