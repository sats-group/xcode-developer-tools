import Foundation
import Combine
import SATSCore

class ___VARIABLE_viewModel___: ObservableObject {
    typealias State = BasicLoadingState<___VARIABLE_viewData___>

    @Published var state: State

    // private let client: Client

    init(state: State = .idle) {
        self.state = state
    }

    @MainActor func initialLoad() async {
        guard case .idle = state else { return }
        await fetchData()
    }

    @MainActor func reloadData() async {
        await fetchData()
    }

    private func fetchData() async {
        state = .loading

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

extension ___VARIABLE_viewModel___: ___VARIABLE_actions___ {
    // implementing actions
}
