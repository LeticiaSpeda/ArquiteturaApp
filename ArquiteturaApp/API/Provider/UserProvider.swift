import Foundation
import FirebaseAuth

protocol UserProviderProtocol {
    func register(parameters: [AnyHashable: Any], completionHadler: @escaping(Result<UserModel, Error>) -> Void)
    
    func login(parameters: [AnyHashable: Any],  completionHadler: @escaping(Result<UserModel, Error>) -> Void)
}

final class UserProvider: UserProviderProtocol {
    private lazy var auth = Auth.auth()
    
    func login(parameters: [AnyHashable : Any], completionHadler: @escaping (Result<UserModel, Error>) -> Void) {
        let body: NSDictionary = parameters[Constants.ParametersKeys.body] as! NSDictionary
        let userModel = body[Constants.ParametersKeys.userModel] as! UserModel
        
        self.auth.signIn(withEmail: userModel.email, password: userModel.password) { (result, error) in
            if let error = error {
                completionHadler(.failure(error))
            } else {
                completionHadler(.success(userModel))
            }
        }
    }
    
    func register(parameters: [AnyHashable : Any], completionHadler: @escaping (Result<UserModel, Error>) -> Void) {
        
    }
    
}
