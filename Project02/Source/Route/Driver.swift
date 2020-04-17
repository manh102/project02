////
////  Router.swift
////  Project02
////
////  Created by Manh Tran on 4/7/20.
////  Copyright © 2020 Manh Tran. All rights reserved.
////
//
//import Foundation
//import UIKit
//
//class Driver {
//    
//    static let shared = Driver()
//    
//    enum RouteType : Int {
//        case authenticate = 0
//        case home = 1
//    }
//    
//    var routeType = RouteType.home
//    
//    // Get current naviagtionController
//    class func currentNavigationController() -> UINavigationController? {
////        if let tabBarViewController = self.topMostController() as? TabBarController {
////            guard let navigationController = tabBarViewController.currentRootViewController as? UINavigationController else { return nil }
////            return navigationController
////        } else {
////            guard let navigationController = self.topMostController() as? UINavigationController else { return nil }
////            return navigationController
////        }
//        guard let navigationController = self.topMostController() as? UINavigationController else { return nil }
//        return navigationController
//    }
//    
//    // Top most Controller
//    class func topMostController() -> UIViewController {
//        var topController: UIViewController = self.rootViewController()
//        while (topController.presentedViewController != nil) {
//            topController = topController.presentedViewController!
//        }
//        return topController
//    }
//    
//    // Get rootViewController
//    class func rootViewController() -> UIViewController {
//        switch self.shared.routeType {
//        case .authenticate:
//            return Router.shared.getAuthNavigationController()
//        case .home:
//            return Router.shared.getAuthNavigationController()
//        }
//    }
//    
//    // Pop To Root View Controller
//    class func popToRootViewControllerAnimated(_ animated: Bool) {
//        if let currentNavigationController = self.currentNavigationController() {
//            currentNavigationController.popToRootViewController(animated: animated)
//        }
//    }
//    
//    // Push View Controller
//    class func pushViewController(_ viewController: UIViewController, animated: Bool) {
//        if let currentNavigationController = self.currentNavigationController() {
//            currentNavigationController.pushViewController(viewController, animated: animated)
//        }
//    }
//    
//    
//     
//    class func pushLikePresentViewController(_ viewController: UIViewController) {
//        if let currentNavigationController = self.currentNavigationController() {
//            let transition = CATransition()
//            transition.duration = 0.5
//            transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
//            transition.type = CATransitionType.moveIn
//            transition.subtype = CATransitionSubtype.fromTop
//            currentNavigationController.view.layer.add(transition, forKey: kCATransition)
//            currentNavigationController.pushViewController(viewController, animated: false)
//        }
//    }
//    
//    class func popLikeDismissViewController() {
//        if let currentNavigationController = self.currentNavigationController() {
//            let transition = CATransition()
//            transition.duration = 0.5
//            transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
//            transition.type = CATransitionType.reveal
//            transition.subtype = CATransitionSubtype.fromBottom
//            currentNavigationController.view.layer.add(transition, forKey: kCATransition)
//            currentNavigationController.popViewController(animated: false)
//        }
//    }
//    
//    // Pop View Controller
//    class func popViewControllerAnimated(_ animated: Bool) {
//        if let currentNavigationController = self.currentNavigationController() {
//            currentNavigationController.popViewController(animated: animated)
//        }
//    }
//    
//    // Present View Controller
//    class func presentViewController(_ viewController:UIViewController, animated: Bool, completion: (() -> ())?) {
//        self.topMostController().present(viewController, animated: animated, completion: completion)
//    }
//    
//    class func dismissViewController(animated: Bool, completion: (() -> ())?) {
//        self.topMostController().dismiss(animated: animated, completion: completion)
//    }
//    
//    // Show Detail View Controller
//    class func showDetailViewController(_ viewController:UIViewController, sender: AnyObject) {
//        if let currentNavigationController = self.currentNavigationController() {
//            currentNavigationController.showDetailViewController(viewController, sender: sender)
//        }
//    }
//    
//    class func topViewController(_ base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController?{
//        if let nav = base as? UINavigationController{
//            let top = topViewController(nav.visibleViewController)
//            return top
//        }
//        
//        if let tab = base as? UITabBarController
//        {
//            if let selected = tab.selectedViewController
//            {
//                let top = topViewController(selected)
//                return top
//            }
//        }
//        
//        if let presented = base?.presentedViewController
//        {
//            let top = topViewController(presented)
//            return top
//        }
//        return base
//    }
//}
