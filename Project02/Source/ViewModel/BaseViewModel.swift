//
//  BaseViewModel.swift
//  Project02
//
//  Created by Manh Tran on 4/7/20.
//  Copyright © 2020 Manh Tran. All rights reserved.
//

import Foundation

protocol ViewModelType {
    
}

class ViewModel: NSObject {
    
    private static var _instance: ViewModel?
    
    var onReload: (() -> ())?
    
    class func instance() -> ViewModel {
        guard let uwShared = _instance else {
            _instance = ViewModel()
            return _instance!
        }
        return uwShared
    }
    
    override init() {
        super.init()
    }
    
    class func destroy() {
        _instance = nil
    }
}
