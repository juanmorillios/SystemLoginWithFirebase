//
//  RecoveryPswdViewController.swift
//  LoginWithFirebase
//
//  Created by Juan Morillo on 14/8/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import UIKit
import Firebase

class RecoveryPswdViewController: UIViewController {
  
  //Textfields with IBOutlets
  @IBOutlet var textFieldRecoveryPassword: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
  }
  
  @IBAction func buttonRecoveryPassword(_ sender: UIButton) {
    //MARK: Recovery password user
    FIRAuth.auth()?.sendPasswordReset(withEmail: textFieldRecoveryPassword.text!, completion: { (error) in
      
      if error != nil {
        print("Error: \(String(describing: error?.localizedDescription))")
      } else {
        print("Su contraseña ha sivo enviada correctamente")
        
      }
      
    })
    
  }
  
}
