import Combine
import SwiftUI
import SATSNetworking

class ___VARIABLE_adapterController___: UIViewController {
    private var observations: Set<AnyCancellable> = []

    private lazy var viewModel: ___VARIABLE_viewModel___ = {
        return ___VARIABLE_viewModel___()
    }()

    private lazy var hostingController: UIHostingController = {
        UIHostingController(rootView: ___VARIABLE_stateView___(viewModel: viewModel))
    }()

    var hostingView: UIView {
        hostingController.view
    }

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
        view.backgroundColor = .backgroundPrimary

        viewModel
            .$state
            .sink { newState in
                guard case let .dataLoaded(viewData) = newState else { return }
                self.title = viewData.title
            }
            .store(in: &observations)

        view.addSubview(hostingView)
        hostingView.translatesAutoresizingMaskIntoConstraints = false
        hostingView.pinToSuperview()

        addChild(hostingController)
        hostingController.didMove(toParent: self)
    }
}
