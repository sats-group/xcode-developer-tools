import SwiftUI

struct ___VARIABLE_stateView___: View {
    @Observed var viewModel: ___VARIABLE_viewModel___

    var body: some View {
        switch viewModel.state {
            case .idle:
                Color.clear.onAppear(perform: viewModel.initialLoad)

            case .loading:
                loadingView

            case let .loadedData(viewData):
                ___VARIABLE_stateView___(viewData: viewData)

            case let .error(viewData):
                errorView(for: viewData)
        }
    }

    private var loadingView: some View {
        SimpleRepresentable<LoadingView> { loadingView in
            loadingView.startAnimating()
        }
    }

    private func errorView(for viewData: ErrorViewData) -> some View {
        SimpleRepresentable<ErrorView> { errorView in
            errorView.onRetry = viewModel.fetchData
            errorView.configure(error: error)
        }
    }
}

@available(iOS 14.0.0, *)
struct ___VARIABLE_stateView___Preview: PreviewProvider {
    static let viewData = ___VARIABLE_viewData___()
    static let errorViewData = ErrorViewData.from(apiError: BaseError.missingData)
    
    static var previews: some View {
        Group {
            ___VARIABLE_stateView___(viewModel: .init(state: .loading))
            ___VARIABLE_stateView___(viewModel: .init(state: .loaded(viewData)))
            ___VARIABLE_stateView___(viewModel: .init(state: .error(errorViewData)))
        }
    }
}
