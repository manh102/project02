//
//  Route.swift
//  Project02
//
//  Created by Manh Tran on 4/7/20.
//  Copyright © 2020 Manh Tran. All rights reserved.
//

import UIKit


class Router {

    static let shared = Router()
    
    var coordinator: SceneCoordinator!
    
    fileprivate var authNavigationController : BaseNavigationController!
    fileprivate var loginViewController: LoginViewController!
    
    convenience init(window: UIWindow) {
        self.init()
        coordinator = SceneCoordinator(window: window)
    }
    
    func setWindow(window: UIWindow) {
        coordinator = SceneCoordinator(window: window)
    }
    
    func routeMeToAuthentication() {
        Driver1.shared.routeType = .authenticate
        //let main = BaseNavigationController(rootViewController: Router.shared.getMainController())
        
        // get your storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        // instantiate your desired ViewController
        let rootController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController

        // Because self.window is an optional you should check it's value first and assign your rootViewController
//        let window = UIApplication.shared.windows.first
//        window?.makeKeyAndVisible()
//        window?.rootViewController = rootController
    }
    
    func getAuthNavigationController() -> BaseNavigationController {
        if self.authNavigationController == nil {
            //self.authNavigationController = BaseNavigationController(rootViewController: HomeController())
        }
        return self.authNavigationController
    }
    
    func getMainController() -> LoginViewController {
        if self.loginViewController == nil {
            self.loginViewController = LoginViewController()
        }
        return self.loginViewController
    }
    
    func toLaunching () {
        self.coordinator.transition(to: Scene.login(LoginViewModel()), type: SceneTransitionType.root)
    }
}
