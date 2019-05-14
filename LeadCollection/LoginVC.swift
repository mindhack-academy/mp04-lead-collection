//
//  ViewController.swift
//  LeadCollection
//
//  Created by Trainer on 09/05/2019.
//  Copyright © 2019 Trainer. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        errorLabel.isHidden = true
        errorLabel.text = "Email sau parola invalida"
    }

    
    @IBAction func doLogin(_ sender: Any) {
        
//        print(emailTextField.text, passwordTextField.text)
        
        // a doua modificare
        
        if emailTextField.text == "email@me.com",
            passwordTextField.text == "pass" {
            // autentificare valida
            errorLabel.isHidden = true
            
            if let formVC = self.storyboard?.instantiateViewController(withIdentifier: "FormVC") {
                self.present(formVC, animated: true, completion: nil)
            }
            
        } else {
            // autentificare invalida
            errorLabel.isHidden = false
        }
        
    }
    
}

