//
//  SceneCoordinator.swift
//  Project02
//
//  Created by Manh Tran on 4/7/20.
//  Copyright © 2020 Manh Tran. All rights reserved.
//

import Foundation
import UIKit

enum Scene {
    case login(LoginViewModel)
}

extension Scene {
    func createViewController() -> UIViewController {
        switch self {
        case .login(let viewModel):
            
            // get your storyboard
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            // instantiate your desired ViewController
            let rootController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            return rootController
//            let navigation = R.storyboard.login.loginNavigation()!
//            var vc = navigation.viewControllers.first as! LoginViewController
//            vc.bindVM(to: viewModel)
//            return navigation
            
        default:
            return UIViewController()
        }
    }
}
