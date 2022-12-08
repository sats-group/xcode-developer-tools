import SwiftUI
import SATSNetworking

struct ___VARIABLE_stateView___: View {
    @ObservedObject var viewModel: ___VARIABLE_viewModel___

    var body: some View {
        switch viewModel.state {
        case .idle:
            Color.clear.onAppear(perform: viewModel.initialLoad)

        case .loading:
            ___VARIABLE_view___(viewData: .previewValue())
                .redacted(reason: .placeholder)

        case let .dataLoaded(viewData):
            ___VARIABLE_view___(viewData: viewData)

        case let .error(error):
            errorView(for: error)
        }
    }

    private func errorView(for error: Error) -> some View {
        SimpleRepresentable<ErrorView> { errorView in
            errorView.onRetry = viewModel.fetchData
            errorView.configure(error: error)
        }
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
