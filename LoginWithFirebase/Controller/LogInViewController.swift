//
//  LogInViewController.swift
//  LoginWithFirebase
//
//  Created by Juan Morillo on 14/8/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import UIKit
import Firebase


class LogInViewController: UIViewController {
  
  //Textfields with IBOutlets
  @IBOutlet var textFieldEmailAdress: UITextField!
  @IBOutlet var textFieldPassword: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  @IBAction func buttonLogInPressed(_ sender: UIButton) {
    //MARK: Log in the user
    FIRAuth.auth()?.signIn(withEmail: textFieldEmailAdress.text!, password: textFieldPassword.text!, completion: { (user, error) in
      
      if error != nil {
        print("Error \(String(describing: error?.localizedDescription))")
      } else {
        self.performSegue(withIdentifier: "goToHome", sender: self)
        print("Login ready")
      }
      
    })
    
  }
  
  @IBAction func buttonForgetPswPressed(_ sender: UIButton) {
    //TODO: Recovery password
    
    FIRAuth.auth()?.sendPasswordReset(withEmail: textFieldEmailAdress.text!, completion: { (error) in
      
      if error != nil {
        
        print("Error \(String(describing: error?.localizedDescription))")
      } else {
        
        print("Error sending message")
        
      }
      
      
    })
    
    
    
  }
  
  @IBAction func buttonChangePswd(_ sender: UIButton) {
    //TODO: Change Password
   
    
  }
  
}
