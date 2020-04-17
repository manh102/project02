//
//  LoginViewModel.swift
//  Project02
//
//  Created by Manh Tran on 4/7/20.
//  Copyright © 2020 Manh Tran. All rights reserved.
//

import Foundation

class LoginViewModel: ViewModel, ViewModelType {
    
    private static var _loginViewModel: LoginViewModel?
    
    var mUsername: String = "Default username" {
        didSet {
            onReload?()
        }
    }
    
    override init() {
        mUsername = "haha"
    }
    
    override class func instance() -> LoginViewModel {
        guard let uwShared = _loginViewModel else {
            _loginViewModel = LoginViewModel()
            return _loginViewModel!
        }
        return uwShared
    }
    
    override class func destroy() {
        super.destroy()
        _loginViewModel = nil
    }
    
    func transform() {
        
    }
}
