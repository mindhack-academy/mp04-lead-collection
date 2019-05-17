//
//  FormVC.swift
//  LeadCollection
//
//  Created by Trainer on 09/05/2019.
//  Copyright © 2019 Trainer. All rights reserved.
//

import Foundation
import UIKit

class FormVC: UIViewController {
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBOutlet weak var technologySegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var reasonTextView: UITextView!
    
    @IBOutlet weak var contactDatePicker: UIDatePicker!
    
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        print(
            firstNameTextField.text,
            lastNameTextField.text,
            emailTextField.text,
            phoneTextField.text,
            
            technologySegmentedControl.selectedSegmentIndex,
            technologySegmentedControl.titleForSegment(at: technologySegmentedControl.selectedSegmentIndex),
            
            reasonTextView.text,
            
            contactDatePicker.date
            )
        
        var user: User = User()
        user.firstName = firstNameTextField.text
        user.lastName = lastNameTextField.text
        user.email = emailTextField.text
        user.phone = phoneTextField.text
        
        print("----- USER -----")
        print(user)
        
        var formData: FormData = FormData()
        formData.user = user
        formData.technology = technologySegmentedControl.selectedSegmentIndex
        formData.reason = reasonTextView.text
        formData.contactDate = contactDatePicker.date
        
        print("----- FORM DATA -----")
        print(formData)
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
    }
}
