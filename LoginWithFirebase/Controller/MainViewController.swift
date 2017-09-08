//
//  MainViewController.swift
//  LoginWithFirebase
//
//  Created by Juan Morillo on 14/8/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import UIKit
import Firebase

class MainViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  @IBAction func buttonLogOutPressed(_ sender: UIButton) {
    //TODO: LogOut
    
    do {
  
      try  FIRAuth.auth()?.signOut()
      
    } catch {
      
      print("error: there was a problem signing out")
      
    }
    
    guard (navigationController?.popViewController(animated: true)) != nil else {
      print("no view Controllers to pop off")
      return
    }
    
  }
  
}
