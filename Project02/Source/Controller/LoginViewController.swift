//
//  LoginViewController.swift
//  Project02
//
//  Created by Dat Nguyen on 4/7/20.
//  Copyright © 2020 Manh Tran. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {

    override func setupDisplay() {
        super.setupDisplay()
    
    }
    
    @IBAction func loginBtnAction(_ sender: Any) {
        print("Tapped on login button")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        // instantiate your desired ViewController
        let mainVC = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        self.navigationController?.pushViewController(mainVC, animated: true)
    }
}
