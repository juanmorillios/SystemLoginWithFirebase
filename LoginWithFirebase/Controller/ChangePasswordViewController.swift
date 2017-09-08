//
//  ChangePasswordViewController.swift
//  LoginWithFirebase
//
//  Created by Juan Morillo on 20/8/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import UIKit
import Firebase

//TODO: Change Password
class ChangePasswordViewController: UIViewController {
  @IBOutlet var textFielNuewPassword: UITextField!
  
  @IBOutlet var textFieldReNewPassword: UITextField!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
  }
  @IBAction func buttonChangePswPressed(_ sender: UIButton) {
    
    FIRAuth.auth()?.confirmPasswordReset(withCode: textFielNuewPassword.text!, newPassword: textFieldReNewPassword.text!, completion: { (error) in
      
      print("Todo")
      
      
    })
    
  }
  
}
