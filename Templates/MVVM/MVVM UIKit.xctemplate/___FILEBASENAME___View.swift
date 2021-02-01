import UIKit

struct ___VARIABLE_viewName___Data {

} 

class ___VARIABLE_viewName___: UIView {

    // MARK: View definitions

    // MARK: Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Private methods

extension ___VARIABLE_viewName___ {
    private func setup() {

    }
}

// MARK: Public methods

extension ___VARIABLE_viewName___ {
    func configure(with viewData: ___VARIABLE_viewName___Data) {

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
