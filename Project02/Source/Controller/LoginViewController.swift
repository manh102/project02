//
//  LoginViewController.swift
//  Project02
//
//  Created by Dat Nguyen on 4/7/20.
//  Copyright © 2020 Manh Tran. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController<LoginViewModel> {
    
    var testVar = ""
    
    override func setupDisplay() {
        super.setupDisplay()
    
    }
    
    override func bindViewModel() {
        viewModel.onReload = { [weak self] in
            guard let `self` = self else {return}
            self.testVar = self.viewModel.mUsername
            print("test: \(self.testVar)")
        }
        viewModel.onReload?()
    }
    
    @IBAction func loginBtnAction(_ sender: Any) {
        print("Tapped on login button")
        Router.shared.toInputMethod()
        viewModel.mUsername = "Tapped on login button2222"
    }
}
