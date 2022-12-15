import SwiftUI

struct ___VARIABLE_viewData___ {
    let title: String
}

extension ___VARIABLE_viewData___ {
    static func previewValue(title: String = "Sample Value") -> ___VARIABLE_viewData___ {
        .init(title: title)
    }
}

protocol ___VARIABLE_actions___: AnyObject {
    // actions go here
}

struct ___VARIABLE_view___: View {
    let viewData: ___VARIABLE_viewData___
    var actions: ___VARIABLE_actions___?

    var body: some View {
        Text(viewData.title)
    }
}

struct ___VARIABLE_view____Preview: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_view___(viewData: .previewValue())
    }
}
