import SwiftUI
import SATSNetworking

class ___VARIABLE_adapterController___: UIViewController, AdapterController {
    private lazy var viewModel: ___VARIABLE_viewModel___ = {
        return ___VARIABLE_viewModel___()
    }()

    // MARK: AdapterController

    lazy var hostingController: UIHostingController = {
        UIHostingController(rootView: ___VARIABLE_stateView___(viewModel: viewModel))
    }()

    func buildHostedView() -> ___VARIABLE_stateView___ { ___VARIABLE_stateView___(viewModel: viewModel) }

    // MARK: Initializers

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    // MARK: View controller lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHostedView()
    }
}
