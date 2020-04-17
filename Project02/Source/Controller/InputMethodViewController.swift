//
//  InputMethodViewController.swift
//  Project02
//
//  Created by Manh Tran on 4/14/20.
//  Copyright © 2020 Manh Tran. All rights reserved.
//

import UIKit

class InputMethodViewController: BaseViewController<InputMethodViewModel> {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(viewModel.testVariable)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func loginBtnAction(_ sender: Any) {
        print("Tapped on input button")
        print(viewModel.testVariable)
        viewModel.testVariable = "new value"
        Router.shared.toTest()
    }
}
