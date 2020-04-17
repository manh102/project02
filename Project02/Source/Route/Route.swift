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
    
    func toLaunching() {
        self.coordinator.transition(to: Scene.login(LoginViewModel.instance()), type: SceneTransitionType.root)
    }
    
    func toInputMethod() {
        self.coordinator.transition(to: Scene.inputMethod(InputMethodViewModel.instance()), type: SceneTransitionType.root)
    }
    
    func toTest() {
        self.coordinator.transition(to: Scene.test(TestViewModel.instance()), type: SceneTransitionType.push)
    }
}
