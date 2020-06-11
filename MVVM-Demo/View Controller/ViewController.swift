//
//  ViewController.swift
//  MVVM-Demo
//
//  Created by Jan Salvador Sebastian on 12/06/2020.
//  Copyright © 2020 Jan Salvador Sebastian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var viewNameLabel: UILabel!
    
    // MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewNameLabel.text = ""
    }
    
    // MARK: Button Action
    @IBAction func combineButtonAction(_ sender: Any) {
        /// Passing the input data to ViewModel
        /// View - ViewModel - Model
        let viewModel: FullName = FullName(
            firstName: self.firstNameTextField.text ?? "",
            lastName: self.lastNameTextField.text ?? ""
        )
        
        /// Model - ViewModel - View
        self.viewNameLabel.text = "\(viewModel.firstName) \(viewModel.lastName)"
    }
    

}

