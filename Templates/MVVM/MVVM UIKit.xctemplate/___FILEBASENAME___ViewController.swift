import UIKit

class ___VARIABLE_viewControllerName___: UIViewController {

    // MARK: Private properties

    private lazy var viewModel: ___VARIABLE_viewModelName___ = {
        let viewModel = ___VARIABLE_viewModelName___()
        viewModel.delegate = self
        return viewModel
    }()

    // MARK: View definitions

    private lazy var moduleView = ___VARIABLE_viewName___(withAutoLayout: true)

    // MARK: View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        viewModel.viewDidLoad()
    }
}

// MARK: View model delegate

extension ___VARIABLE_viewControllerName___: ___VARIABLE_viewModelName___Delegate {
    func stateDidChange(to newState: ___VARIABLE_stateName___) {

    }
}

// MARK: Private methods

extension ___VARIABLE_viewControllerName___ {
    private func setupViews() {

    }
}
