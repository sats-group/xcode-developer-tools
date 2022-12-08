import SwiftUI

struct ___VARIABLE_view___: View {
    let viewData: ___VARIABLE_viewData___

    var body: some View {
        Text(viewData.title)
    }
}

struct ___VARIABLE_view____Preview: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_view___(viewData: .previewValue())
    }
}
