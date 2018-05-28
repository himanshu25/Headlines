//
//  ChangePasswordTableViewController.swift
//  Headlines
//
//  Created by Himanshu on 05/28/18.
//  Copyright © 2018 Himanshu. All rights reserved.
//

import Foundation
import UIKit

class ChangePasswordTableViewController : UITableViewController {
    
    private var viewModel :ChangePasswordViewModel = ChangePasswordViewModel() 
    
    @IBOutlet weak var newPasswordTextField :BindingTextField! {
        didSet {
            self.newPasswordTextField.bind { self.viewModel.newPassword.value = $0 }
        }
    }
    @IBOutlet weak var confirmPasswordTextField :BindingTextField! {
        didSet {
            self.confirmPasswordTextField.bind { self.viewModel.confirmPassword.value = $0 }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func save() {
        if self.viewModel.isValid {
            // update the password
            print("update the user's password")
        } else {
            // show errors
            print(self.viewModel.brokenRules)
        }
    }
    
}
