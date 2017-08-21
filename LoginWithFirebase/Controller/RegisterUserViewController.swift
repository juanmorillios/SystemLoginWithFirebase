//
//  RegisterUserViewController.swift
//  LoginWithFirebase
//
//  Created by Juan Morillo on 14/8/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import UIKit
import Firebase

class RegisterUserViewController: UIViewController {
  @IBOutlet var textFieldEmailAdress: UITextField!
  
  @IBOutlet var textFieldPassword: UITextField!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
  }
  
  @IBAction func buttonRegisterPRessed(_ sender: UIButton) {
    
    FIRAuth.auth()?.createUser(withEmail: textFieldEmailAdress.text!, password: textFieldPassword.text!, completion: { (user, error) in
      
      if error != nil {
        print("Error \(String(describing: error?.localizedDescription))")
      } else {
        self.performSegue(withIdentifier: "goToHome", sender: self)
        print("Resgistro completo")
      }
      
    })
    
  }
  
}
