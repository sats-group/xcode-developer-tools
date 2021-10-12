import SwiftUI

struct ___VARIABLE_view___: View {
    let viewData: ___VARIABLE_viewData___

    var body: some View {
        Color.clear
    }
}

@available(iOS 14.0.0, *)
struct ___VARIABLE_view____Preview: PreviewProvider {
    static let viewData = ___VARIABLE_viewData___()
    static let errorViewData = ErrorViewData.from(apiError: BaseError.missingData)
    
    static var previews: some View {
        Group {
            ___VARIABLE_view___(viewModel: .init(state: .loading))
            ___VARIABLE_view___(viewModel: .init(state: .loadedData(viewData)))
            ___VARIABLE_view___(viewModel: .init(state: .error(errorViewData)))
        }
    }
}
