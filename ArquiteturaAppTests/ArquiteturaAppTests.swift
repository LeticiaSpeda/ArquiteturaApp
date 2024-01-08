import XCTest
@testable import ArquiteturaApp

final class ArquiteturaAppTests: XCTestCase {

    func test_Register() {
        let manager = UserManager(business: UserBusiness())
        
        manager.register(email: "aaaa", password: "a123456") { userModel in
            print(userModel)
        } failureHandler: { error in
            print(error)
        }
        
        manager.register(email: "test@mail.com", password: "aa") { userModel in
            print(userModel)
        } failureHandler: { error in
            print(error)
        }
        
        manager.register(email: "test@mail.com", password: "123456") { userModel in
            print(userModel)
        } failureHandler: { error in
            print(error)
        }

    }
    
    func test_Login() {
        let manager = UserManager(business: UserBusiness())
        
        manager.login(email: "aaaa", password: "a123456") { userModel in
            print(userModel)
        } failureHandler: { error in
            print(error)
        }
        
        manager.login(email: "test@mail.com", password: "aa") { userModel in
            print(userModel)
        } failureHandler: { error in
            print(error)
        }
        
        manager.login(email: "test@mail.com", password: "123456") { userModel in
            print(userModel)
        } failureHandler: { error in
            print(error)
        }

    }
}
