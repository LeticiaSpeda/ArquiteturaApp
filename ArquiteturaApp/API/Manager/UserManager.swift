import Foundation

protocol UserManagerProtocol  {
    func login(email: String, password: String, successHandler: @escaping(UserModel) -> Void, failureHandler: @escaping(Error) -> Void)
    func register(email: String, password: String, completionHandler: @escaping(Result<UserModel, Error>) -> Void)
}

final class UserManager: UserManagerProtocol {
    private let business: UserBusinessProtocol
    
    init(business: UserBusinessProtocol) {
        self.business = business
    }
    
    func login(email: String, password: String, successHandler: @escaping (UserModel) -> Void, failureHandler: @escaping (Error) -> Void) {
    }
    
    func register(email: String, password: String, completionHandler: @escaping (Result<UserModel, Error>) -> Void) {
        <#code#>
    }
    
    
}
