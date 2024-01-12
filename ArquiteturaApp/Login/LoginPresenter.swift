import Foundation

protocol LoginPresenterDelegate {
    func showMessage(title: String, message: String)
}

final class LoginPresenter {
    var delegate: LoginPresenterDelegate?
    
    func login(userModel: UserModel) {
        let manager = UserManager(business: UserBusiness())
        manager.login(email: userModel.email, password: userModel.password) { model in
            
            
        } failureHandler: { [weak self] error in
            self?.delegate?.showMessage(title: "Erro", message: "\(error.localizedDescription)")
        }
    }
    
    func goHome() {
        
    }
}
