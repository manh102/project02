//
//  BaseViewController.swift
//  Project02
//
//  Created by Dat Nguyen on 4/7/20.
//  Copyright © 2020 Manh Tran. All rights reserved.
//

import UIKit

protocol BindableType {
    
    associatedtype ViewModelType
    var viewModel: ViewModelType! { get set }
    
    func bindViewModel()
}

extension BindableType where Self: UIViewController {

    mutating func bindVM(to model: Self.ViewModelType) {
        viewModel = model
        // 2020/04/17
        bindViewModel()
    }
}

extension BindableType where Self: UIView {
    
    mutating func bindVM(to model: Self.ViewModelType) {
        viewModel = model
        bindViewModel()
    }
}

class BaseViewController<T: ViewModelType> : UIViewController, BindableType {
    
    var viewModel: T!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func bindViewModel() {
        //Implement in subsclass
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
