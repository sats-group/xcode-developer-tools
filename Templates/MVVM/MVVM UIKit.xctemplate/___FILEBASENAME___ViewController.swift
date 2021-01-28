import UIKit

class ___VARIABLE_viewControllerName___: UIViewController {

    // MARK: Private properties

    private lazy var viewModel: ___VARIABLE_moduleName___ViewModel = {
        let viewModel = ___VARIABLE_viewModelName___()
        viewModel.delegate = self
        return viewModel
    }()

    // MARK: View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: View model delegate

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_viewModelName___Delegate {

    func stateDidChange(to newState: ___VARIABLE_stateName___) {

    }
}
