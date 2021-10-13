import SwiftUI
import SATSNetworking

struct ___VARIABLE_stateView___: View {
    @ObservedObject var viewModel: ___VARIABLE_viewModel___

    var body: some View {
        switch viewModel.state {
        case .idle:
            Color.clear.onAppear(perform: viewModel.initialLoad)

        case .loading:
            loadingView

        case let .loaded(viewData):
            ___VARIABLE_view___(viewData: viewData)

        case let .failed(error):
            errorView(for: error)
        }
    }

    @ViewBuilder private var loadingView: some View {
        if #available(iOS 14.0, *) {
            ___VARIABLE_view___(viewData: .placeholder)
                .redacted(reason: .placeholder)
        } else {
            SimpleRepresentable<LoadingView> { loadingView in
                loadingView.startAnimating()
            }
        }
    }

    private func errorView(for error: Error) -> some View {
        SimpleRepresentable<ErrorView> { errorView in
            errorView.onRetry = viewModel.retryLoad
            errorView.configure(error: error)
        }
    }
}

struct ___VARIABLE_stateView___Preview: PreviewProvider {
    static let viewData = ___VARIABLE_viewData___()

    static var previews: some View {
        Group {
            ___VARIABLE_stateView___(viewModel: .init(state: .loading))
            ___VARIABLE_stateView___(viewModel: .init(state: .loaded(viewData)))
            ___VARIABLE_stateView___(viewModel: .init(state: .failed(BaseError.missingData)))
        }
    }
}
