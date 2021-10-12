import Foundation
import Combine
import SATSCore

class ___VARIABLE_viewModel___: ObservableObject {
    @Published var state: State

    init(state: State = .idle) {
        self.state = state
    }
}

extension ___VARIABLE_viewModel___ {
    func initialLoad() {
        guard case .idle = state else { return }
        fetchData()
    }

    func fetchData() {
        state = .loading
    }
}

extension ___VARIABLE_viewModel___ {
    enum State {
        case idle
        case loading
        case loaded(viewData: ___VARIABLE_viewData___)
        case error(viewData: ErrorViewData)
    }
}