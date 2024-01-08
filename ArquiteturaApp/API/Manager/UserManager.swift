import Foundation

protocol UserManagerProtocol  {
    func login(email: String, password: String, completionHandler: @escaping(Result<UserModel, Error>) -> Void)
    
    func register(email: String, password: String, successHandler: @escaping(UserModel) -> Void, failureHandler: @escaping(Error) -> Void)
}

final class UserManager: UserManagerProtocol {
    func login(email: String, password: String, completionHandler: @escaping (Result<UserModel, Error>) -> Void) {
        <#code#>
    }
    
    func register(email: String, password: String, successHandler: @escaping (UserModel) -> Void, failureHandler: @escaping (Error) -> Void) {
        <#code#>
    }
}
