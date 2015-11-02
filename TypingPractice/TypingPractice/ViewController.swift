//
//  ViewController.swift
//  TypingPractice
//
//  Created by Jo Albright on 11/2/15.
//  Copyright © 2015 Jo Albright. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let emojiPhrases = [
        "💰🚫🌳" : "Money doesn’t grow on trees.",
        "❌⏰🐣":"Don’t count your chickens before they hatch.",
        "📞📅":"Call it a day",
        "▶️🔥":"Play with fire.",
       "👫🚤": "We’re all in the same boat",
       "❌🏠": "There’s no place like home.",
       "✋🐴": "Hold your horses.",
       "🙈🙉🙊": "See no evil; hear no evil; speak no evil."]

    @IBOutlet weak var practiceTextField: UITextField!
    @IBOutlet weak var practiceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.practiceTextField.delegate = self
    }
    
//MARK: - Textfield Delegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        //user finished editing
        
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        
       //does change make sense?
        
        
        
        let text = textField.text! as  NSString
        
        let wholeText = text.stringByReplacingCharactersInRange(range, withString: string)
        
        
        
     
        //return false to dissalow change
        
//        print(textField.text)
//        
//        //check input of textfield against practice label
//        print(range)
//        print(string)
        
        return true
    }
    

}



