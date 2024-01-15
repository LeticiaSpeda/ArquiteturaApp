import Foundation

protocol RegisterPresentDelegate {
    func showMessage(title: String, message: String)
    func goHome()
}

final class RegisterPresent {
    var delegate: RegisterPresentDelegate?
    
    func register(userModel: UserModel) {
        let manager = UserManager(business: UserBusiness())
        
        manager.register(email: userModel.email, password: userModel.password) { [weak self] model in
            self?.delegate?.goHome()
        } failureHandler: { [weak self] error in
            self?.delegate?.showMessage(title: "Erro", message: "\(error.localizedDescription)")
        }

    }
}
