import Foundation
import FirebaseAuth

protocol UserProviderProtocol {
    func register(parameters: [AnyHashable: Any], completionHadler: @escaping(Result<UserModel, Error>) -> Void)
    
    func login(parameters: [AnyHashable: Any],  completionHadler: @escaping(Result<UserModel, Error>) -> Void)
}

final class UserProvider: UserProviderProtocol {
    private lazy var auth = Auth.auth()
    
    func login(parameters: [AnyHashable : Any], completionHadler: @escaping (Result<UserModel, Error>) -> Void) {
        let body: NSDictionary = parameters["body"] as! NSDictionary
        let userModel = body["userModel"] as! UserModel
        
        self.auth.signIn(withEmail: userModel.email, password: userModel.password)
    }
    
    func register(parameters: [AnyHashable : Any], completionHadler: @escaping (Result<UserModel, Error>) -> Void) {
        
    }
    
}
