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
    case inputMethod(InputMethodViewModel)
    case test(TestViewModel)
}

extension Scene {
    func createViewController() -> UIViewController {
        switch self {
        case .login(let viewModel):
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            var loginVC = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            loginVC.bindVM(to: viewModel)
            return loginVC
            
        case .inputMethod(let viewModel):
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            var inputMethodVC = storyboard.instantiateViewController(withIdentifier: "InputMethodViewController") as! InputMethodViewController
            let navigationController = UINavigationController(rootViewController: inputMethodVC)
            inputMethodVC.bindVM(to: viewModel)
            return navigationController
            
        case .test(let viewModel):
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            var testVC = storyboard.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
            return testVC
            
        default:
            return UIViewController()
        }
    }
}
