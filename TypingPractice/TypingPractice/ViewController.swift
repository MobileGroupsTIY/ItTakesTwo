//
//  ViewController.swift
//  TypingPractice
//
//  Created by Jo Albright on 11/2/15.
//  Copyright © 2015 Jo Albright. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var praticeTextField: UITextField!
    
    @IBOutlet weak var practiceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
//MARK: - Textfield Delegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        //user finished editing
        
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        return true
    }

}


let sv = UIStackView()

