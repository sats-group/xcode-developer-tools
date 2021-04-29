import Foundation
import SATSNetworking

// MARK: State

enum ___VARIABLE_moduleName:identifier___State {
    case loading
    case dataLoaded(_ data: ___VARIABLE_viewName___Data)
    case failure(error: Error)
}

// MARK: Output

protocol ___VARIABLE_viewModelName___Delegate: AnyObject {
    func stateDidChange(to newState: ___VARIABLE_moduleName:identifier___State)
}

class ___VARIABLE_viewModelName___ {

    // MARK: Public properties

    weak var delegate: ___VARIABLE_viewModelName___Delegate?

    private(set) var state: ___VARIABLE_moduleName:identifier___State = .loading {
        didSet {
            delegate?.stateDidChange(to: state)
        }
    }

    private let ___VARIABLE_instanceName___Client = ___VARIABLE_moduleName:identifier___Client()
}

// MARK: Input

extension ___VARIABLE_viewModelName___ {
    func viewDidLoad() {
        fetch___VARIABLE_moduleName:identifier___()
    }

    func retryTapped() {
        fetch___VARIABLE_moduleName:identifier___()
    }
}

// MARK: Private methods
extension ___VARIABLE_viewModelName___ {
    private func fetch___VARIABLE_moduleName:identifier___() {
        state = .loading

        ___VARIABLE_instanceName___Client
            // TODO: .request(completionHandler: setState(for:))
    }

    /* TODO: this is a sample method, you should adapt it to your needs
    private func setState(for result: Result<DTO, NETWORKING error>) {
        switch result {
        case let .success(dto):
            // TODO: parsing DTO to ViewData
            state = .dataLoaded(___VARIABLE_moduleName:identifier___ViewData(dto: dto))

        case let .failure(error):
            state = .failure(error: error)
        }
    }
     */
}


// MARK: Private methods
extension ___VARIABLE_viewModelName___: ___VARIABLE_moduleName:identifier___ViewDelegate {

}
