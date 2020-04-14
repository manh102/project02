//
//  BaseNavigationController.swift
//  Yosing
//
//  Created by Thanh on 7/12/16.
//  Copyright © 2016 Zyncas. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        self.navigationBar.isTranslucent = false
        self.navigationBar.barTintColor = .black
        self.navigationBar.backgroundColor = .black
//        self.navigationBar.tintColor = AppColor.primary
//        self.navigationBar.titleTextAttributes = [NSAttributedStringKey.font: AppFont.regular.size(.h18), NSAttributedStringKey.foregroundColor: UIColor.white]
    }

    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        if self.topViewController != nil {
            return self.topViewController!.preferredStatusBarStyle
        }
        return super.preferredStatusBarStyle
    }
    
    deinit { NotificationCenter.default.removeObserver(self) }
}
