//
//  LogInViewController.swift
//  LoginWithFirebase
//
//  Created by Juan Morillo on 14/8/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
  
  //Textfields with IBOutlets
  
  @IBOutlet var textFieldEmailAdress: UITextField!
  @IBOutlet var textFieldPassword: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

  @IBAction func buttonLogInPressed(_ sender: UIButton) {
    
    //TODO: Log in the user
    
  }
  
  @IBAction func buttonForgetPswPressed(_ sender: UIButton) {
    //TODO: Recovery password
  }
  
}
