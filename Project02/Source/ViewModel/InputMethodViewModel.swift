//
//  InputMethodViewModel.swift
//  Project02
//
//  Created by Manh Tran on 4/14/20.
//  Copyright © 2020 Manh Tran. All rights reserved.
//

import Foundation

class InputMethodViewModel: ViewModel, ViewModelType {
    
    private static var _inputMethodViewModel: InputMethodViewModel?
    
    var testVariable: String = "Default username" {
        didSet {
            onReload?()
        }
    }
    
    override init() {
        testVariable = "haha"
    }
    
    override class func instance() -> InputMethodViewModel {
        guard let uwShared = _inputMethodViewModel else {
            _inputMethodViewModel = InputMethodViewModel()
            return _inputMethodViewModel!
        }
        return uwShared
    }
    
    override class func destroy() {
        super.destroy()
        _inputMethodViewModel = nil
    }
    
    func transform() {
        
    }
    
}
