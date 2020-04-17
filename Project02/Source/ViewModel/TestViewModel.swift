//
//  TestViewModel.swift
//  Project02
//
//  Created by Manh Tran on 4/17/20.
//  Copyright © 2020 Manh Tran. All rights reserved.
//

import Foundation

class TestViewModel: ViewModel, ViewModelType {
    
    private static var _testViewModel: TestViewModel?
    
    var testVariable: String = "Default username" {
        didSet {
            onReload?()
        }
    }
    
    override init() {
        testVariable = "haha"
    }
    
    override class func instance() -> TestViewModel {
        guard let uwShared = _testViewModel else {
            _testViewModel = TestViewModel()
            return _testViewModel!
        }
        return uwShared
    }
    
    override class func destroy() {
        super.destroy()
        _testViewModel = nil
    }
    
    func transform() {
        
    }
    
}
