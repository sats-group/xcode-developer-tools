import SwiftUI
import SATSNetworking

struct ___VARIABLE_stateView___: View {
    @ObservedObject var viewModel: ___VARIABLE_viewModel___

    var body: some View {
        BasicStateView(
            state: viewModel.state,
            loadingContent: {
                ___VARIABLE_view___(viewData: .previewValue())
                    .redacted(reason: .placeholder)
            },
            dataContent: { viewData in
                ___VARIABLE_view___(viewData: viewData, actions: viewModel)
            },
            initialLoad: viewModel.initialLoad,
            onErrorRetry: viewModel.reloadData
        )
    }
}

struct ___VARIABLE_stateView___Preview: PreviewProvider {
    static let viewData = ___VARIABLE_viewData___.previewValue()

    static var previews: some View {
        Group {
            ___VARIABLE_stateView___(viewModel: .init(state: .loading))
            ___VARIABLE_stateView___(viewModel: .init(state: .dataLoaded(viewData)))
            ___VARIABLE_stateView___(viewModel: .init(state: .error(BaseError.missingData)))
        }
    }
}
