import Foundation
import Combine
import SATSCore

class ___VARIABLE_viewModel___: ObservableObject {
    @Published var state: State

    // private let client: Client

    init(state: State = .idle) {
        self.state = state
    }

    func initialLoad() {
        guard case .idle = state else { return }
        fetchData()
    }

    func fetchData() {
        state = .loading

        // Start fetching data here
        Task { @MainActor in
            do {
                // 
                // let dto = try await client.getData()
                // let viewData = map(dto)

                // template code
                try await Task.sleep(nanoseconds: 2_000_000_000) // sleep 2 seconds
                #warning("Replace `true` for an actual DTO")
                let viewData = Mapper.mapToViewData(true)

                state = .dataLoaded(viewData)
            } catch {
                state = .error(error)
            }
        }
    }
}

extension ___VARIABLE_viewModel___ {
    enum State {
        case idle
        case loading
        case dataLoaded(___VARIABLE_viewData___)
        case error(Error)
    }
}
