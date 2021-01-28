import Foundation

// MARK: State

enum ___VARIABLE_moduleName:identifier___State {
    case idle
}

// MARK: Output

protocol ___VARIABLE_viewModelName___Delegate: AnyObject {
    func stateDidChange(to newState: ___VARIABLE_moduleName:identifier___State)
}

class ___VARIABLE_viewModelName___ {

    // MARK: Public properties

    weak var delegate: ___VARIABLE_viewModelName___Delegate?

    private (set) var state: ___VARIABLE_moduleName:identifier___State = .idle {
        didSet {
            delegate?.stateDidChange(to: state)
        }
    }
}

// MARK: Input

extension ___VARIABLE_viewModelName___ {
    func viewDidLoad() {

    }
}
