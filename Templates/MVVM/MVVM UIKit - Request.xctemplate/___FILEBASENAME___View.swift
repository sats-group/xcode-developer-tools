import UIKit

struct ___VARIABLE_viewName___Data {

}

protocol ___VARIABLE_viewName___Delegate: AnyObject {
    
}

class ___VARIABLE_viewName___: UIView {

    weak var delegate: ___VARIABLE_viewName___Delegate?

    // MARK: Subviews

    // MARK: Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Public methods

    func configure(with viewData: ___VARIABLE_viewName___Data) {

    }

    // MARK: Private methods

    private func setup() {

    }
}

// MARK: - Preview

import SwiftUI

@available(iOS 14.0.0, *)
struct ___VARIABLE_viewName____Preview: PreviewProvider {
    static func getPreview() -> UIView {
        let view = ___VARIABLE_viewName___(withAutoLayout: true)
        let viewData = ___VARIABLE_viewName___Data()
        view.configure(with: viewData)
        return view
    }
    
    static var previews: some View {
        DemoWrapperView(view: getPreview())
            .ignoresSafeArea()
    }
}
