//
//  ViewController.swift
//  TypingPractice
//
//  Created by Jo Albright on 11/2/15.
//  Copyright © 2015 Jo Albright. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tpTextField: UITextField!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set textfield as first responder after view loads
        tpTextField.becomeFirstResponder()
        
    }
    

 

    
//MARK: - Textfield Delegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        //Resign first responder
        tpTextField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        //user finished editing
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        return true
    }

}


