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
        let viewModel: FullName = FullName(
            firstName: self.firstNameTextField.text ?? "",
            lastName: self.lastNameTextField.text ?? ""
        )
        
        self.viewNameLabel.text = "\(viewModel.firstName) \(viewModel.lastName)"
    }
    

}

