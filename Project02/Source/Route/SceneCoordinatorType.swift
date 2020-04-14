//
//  SceneCoordinatorType.swift
//  Project02
//
//  Created by Manh Tran on 4/7/20.
//  Copyright © 2020 Manh Tran. All rights reserved.
//

import Foundation
import UIKit

enum SceneTransitionType {
    case root           // make view controller the root view controller
    case push           // push view controller to navigation stack
    case modal          // present view controller modally
    case slideToRight   // similar "modal" but with animation slide from left to right
    case popup          // present view controller as popup
}

protocol SceneCoordinatorType {
    func transition(to scene: Scene, type: SceneTransitionType, _ animated: Bool)
}

class SceneCoordinator : SceneCoordinatorType {
    private var window: UIWindow
    weak var currentViewController: UIViewController?
    
    required init(window: UIWindow) {
        self.window = window
        currentViewController = window.rootViewController!
    }
    
    func transition(to scene: Scene, type: SceneTransitionType, _ animated: Bool = true) {
        let vc = scene.createViewController()
        return transition(to: vc, type: type, animated)
    }
    
    static func actualViewController(for viewController: UIViewController) -> UIViewController {
        if let navigationController = viewController as? UINavigationController {
            return navigationController.viewControllers.last!
        } else {
            return viewController
        }
    }

    
    func transition(to viewController: UIViewController, type: SceneTransitionType, _ animated: Bool = true) {
        let viewController = viewController
        
        if let vc = currentViewController {
            currentViewController = SceneCoordinator.actualViewController(for: vc)
        } else {
            currentViewController = SceneCoordinator.actualViewController(for: window.rootViewController!)
        }
        
        switch type {
        case .root:
            if let _ = currentViewController?.presentingViewController {
                currentViewController?.dismiss(animated: false)
            }
            self.window.rootViewController = viewController
            self.currentViewController = SceneCoordinator.actualViewController(for: viewController)
        case .push:
            break
        case .modal:
            break
        case .slideToRight:
            break
        case .popup:
            break
        }
    }
}
