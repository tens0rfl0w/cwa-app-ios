//
// 🦠 Corona-Warn-App
//

import UIKit
import OpenCombine

final class ExposureSubmissionSymptomsViewController: DynamicTableViewController, ENANavigationControllerWithFooterChild, DismissHandling {

	// MARK: - Init

	init(
		onPrimaryButtonTap: @escaping (SymptomsOption, @escaping (Bool) -> Void) -> Void,
		onDismiss: @escaping (@escaping (Bool) -> Void) -> Void
	) {
		self.onPrimaryButtonTap = onPrimaryButtonTap
		self.onDismiss = onDismiss
		super.init(nibName: nil, bundle: nil)
	}

	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	// MARK: - Overrides

	override func viewDidLoad() {
		super.viewDidLoad()

		setupView()
	}
	
	override var navigationItem: UINavigationItem {
		navigationFooterItem
	}

	// MARK: - Protocol ENANavigationControllerWithFooterChild

	func navigationController(_ navigationController: ENANavigationControllerWithFooter, didTapPrimaryButton button: UIButton) {
		guard let selectedSymptomsOption = selectedSymptomsOption else {
			fatalError("Primary button must not be enabled before the user has selected an option")
		}

		onPrimaryButtonTap(selectedSymptomsOption) { [weak self] isLoading in
			DispatchQueue.main.async {
				self?.updateForLoadingState(isLoading: isLoading)
			}
		}
	}
	
	// MARK: - Protocol DismissHandling
	
	func wasAttemptedToBeDismissed() {
		onDismiss { [weak self] isLoading in
			DispatchQueue.main.async {
				self?.updateForLoadingState(isLoading: isLoading)
			}
		}
	}
	
	// MARK: - Internal
	
	enum SymptomsOption {
		case yes, no, preferNotToSay
	}

	// MARK: - Private

	private let onPrimaryButtonTap: (SymptomsOption, @escaping (Bool) -> Void) -> Void
	private let onDismiss: (@escaping (Bool) -> Void) -> Void
	
	private var selectedSymptomsOptionConfirmationButtonStateSubscription: AnyCancellable?
	private var optionGroupSelectionSubscription: AnyCancellable?

	@OpenCombine.Published private var selectedSymptomsOption: SymptomsOption?

	private lazy var navigationFooterItem: ENANavigationFooterItem = {
		let item = ENANavigationFooterItem()
		item.primaryButtonTitle = AppStrings.ExposureSubmissionTestResultAvailable.primaryButtonTitle
		item.isPrimaryButtonEnabled = true
		item.isSecondaryButtonHidden = true
		item.title = AppStrings.ExposureSubmissionTestResultAvailable.title
		return item
	}()

	private var optionGroupSelection: OptionGroupViewModel.Selection? {
		didSet {
			guard case let .option(index: index) = optionGroupSelection else { return }

			switch index {
			case 0:
				selectedSymptomsOption = .yes
			case 1:
				selectedSymptomsOption = .no
			case 2:
				selectedSymptomsOption = .preferNotToSay
			default:
				break
			}
		}
	}

	private func setupView() {
		view.backgroundColor = .enaColor(for: .background)

		navigationItem.title = AppStrings.ExposureSubmissionSymptoms.title
		navigationFooterItem?.primaryButtonTitle = AppStrings.ExposureSubmissionSymptoms.continueButton

		setupTableView()

		selectedSymptomsOptionConfirmationButtonStateSubscription = $selectedSymptomsOption.receive(on: RunLoop.main.ocombine).sink {
			self.navigationFooterItem?.isPrimaryButtonEnabled = $0 != nil
		}
	}

	private func setupTableView() {
		tableView.separatorStyle = .none

		tableView.register(
			DynamicTableViewOptionGroupCell.self,
			forCellReuseIdentifier: CustomCellReuseIdentifiers.optionGroupCell.rawValue
		)

		dynamicTableViewModel = dynamicTableViewModel()
	}

	private func dynamicTableViewModel() -> DynamicTableViewModel {
		
		let bulletPointCells = AppStrings.ExposureSubmissionSymptoms.symptoms.map {
			DynamicCell.bulletPoint(text: $0)
		}
		
		return DynamicTableViewModel.with {
			$0.add(
				.section(
					header: .none,
					cells: [
							.headline(
							 text: AppStrings.ExposureSubmissionSymptoms.description,
							 accessibilityIdentifier: AccessibilityIdentifiers.ExposureSubmissionSymptoms.description
						 )]
						+ bulletPointCells
						+ [
							.subheadline(
								text: AppStrings.ExposureSubmissionSymptoms.introduction,
								color: .enaColor(for: .textPrimary2),
								accessibilityIdentifier: AccessibilityIdentifiers.ExposureSubmissionSymptoms.introduction
						)]
						+ [
							.custom(
								withIdentifier: CustomCellReuseIdentifiers.optionGroupCell,
								configure: { [weak self] _, cell, _ in
									guard let cell = cell as? DynamicTableViewOptionGroupCell else { return }
									
									cell.configure(
										options: [
											.option(title: AppStrings.ExposureSubmissionSymptoms.answerOptionYes,
													accessibilityIdentifier: AccessibilityIdentifiers.ExposureSubmissionSymptoms.answerOptionYes),
											.option(title: AppStrings.ExposureSubmissionSymptoms.answerOptionNo,
													accessibilityIdentifier: AccessibilityIdentifiers.ExposureSubmissionSymptoms.answerOptionNo),
											.option(title: AppStrings.ExposureSubmissionSymptoms.answerOptionPreferNotToSay,
													accessibilityIdentifier: AccessibilityIdentifiers.ExposureSubmissionSymptoms.answerOptionPreferNotToSay)
										],
										// The current selection needs to be provided in case the cell is recreated after leaving and reentering the screen
										initialSelection: self?.optionGroupSelection
									)
									
									self?.optionGroupSelectionSubscription = cell.$selection.sink {
										self?.optionGroupSelection = $0
									}
								}
							)
					]
				)
			)
		}
	}

	private func updateForLoadingState(isLoading: Bool) {
		view.isUserInteractionEnabled = !isLoading
		navigationItem.rightBarButtonItem?.isEnabled = !isLoading
		navigationFooterItem?.isPrimaryButtonLoading = isLoading
		navigationFooterItem?.isPrimaryButtonEnabled = !isLoading
	}

}

// MARK: - Cell reuse identifiers.

extension ExposureSubmissionSymptomsViewController {
	enum CustomCellReuseIdentifiers: String, TableViewCellReuseIdentifiers {
		case optionGroupCell
	}
}
