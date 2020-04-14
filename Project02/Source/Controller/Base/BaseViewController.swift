//
//  BaseViewController.swift
//  Project02
//
//  Created by Dat Nguyen on 4/7/20.
//  Copyright © 2020 Manh Tran. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    //MARK: Color and displaying
    func setupDisplay() {
        setupNavigation()
    }
    
    func setupNavigation() {
        navigationItem.setHidesBackButton(true, animated: false)
        
        navigationController?.navigationBar.barTintColor = UIColor.blue
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barStyle = .black
        edgesForExtendedLayout = .init(rawValue: 0)
        
       
    }

}
