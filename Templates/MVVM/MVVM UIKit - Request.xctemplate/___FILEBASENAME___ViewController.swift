import UIKit

class ___VARIABLE_viewControllerName___: UIViewController {

    // MARK: Private properties

    private lazy var viewModel: ___VARIABLE_viewModelName___ = {
        let viewModel = ___VARIABLE_viewModelName___()
        viewModel.delegate = self
        return viewModel
    }()

    // MARK: View definitions

    private lazy var errorView: ErrorView = {
        let errorView = ErrorView(withAutoLayout: true)
        errorView.retryTapped = viewModel.retryTapped
        return errorView
    }()

    private lazy var loadingView = LoadingView(withAutoLayout: true)

    private lazy var ___VARIABLE_instanceName___View: ___VARIABLE_viewName___ = {
        let ___VARIABLE_instanceName___View = ___VARIABLE_viewName___(withAutoLayout: true)
        ___VARIABLE_instanceName___View.delegate = viewModel
        return ___VARIABLE_instanceName___View
    }()

    private var activeView: UIView? {
        willSet {
            loadingView.stopAnimating()
            activeView?.removeFromSuperview()
        }

        didSet {
            guard let activeView = activeView else { return }
            view.addSubview(activeView)
            activeView.pinToSuperview()
        }
    }

    // MARK: View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        viewModel.viewDidLoad()
    }
}

// MARK: View model delegate

extension ___VARIABLE_viewControllerName___: ___VARIABLE_viewModelName___Delegate {
    func stateDidChange(to newState: ___VARIABLE_moduleName:identifier___State) {
        switch newState {
        case .loading:
            activeView = loadingView
            loadingView.startAnimating()

        case let .dataLoaded(viewData):
            ___VARIABLE_instanceName___View.configure(with: viewData)
            activeView = ___VARIABLE_instanceName___View

        case let .failure(error):
            errorView.configure(error: error)
            activeView = errorView
        }
    }
}

// MARK: Private methods

extension ___VARIABLE_viewControllerName___ {
    private func setupViews() {
        view.backgroundColor = .backgroundPrimary
    }
}
