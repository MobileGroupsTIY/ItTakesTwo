//
//  ViewController.swift
//  TypingPractice
//
//  Created by Jo Albright on 11/2/15.
//  Copyright © 2015 Jo Albright. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    var emojis = [Emoji]()

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
struct Emoji {
    var char: String
    var description: String {
        
        switch self.char {
        case "💰": return "Money"
        case "❌" : return "Don't"
        case "🌳": return "Tree"
        case "⏰": return "Time"
        case "🐣": return "Hatch"
        case "📞": return "Call"
        case "📅": return "Money"
        case "▶️": return "Play"
        case "🔥": return "Fire"
        case "👫": return "Together"
        case "🚤": return "Boat"
        case "🚫": return "No"
        case "🏠": return "Home"
        case "✋": return "Hold"
        case "🐴": return "Horse"
        case "🙈": return "See No Evil"
        case "🙉": return "Hear No Evil"
        case "🙊": return "Speak No Evil"
        default: return ""
            
        }
        
    }
    
    
  static let hints = ["Money Don't Tree", "Don't Time Hatch", "Call Day", "Play Fire", "Together Boat", "No Home", "Hold Horse", "See No Evil. Hear No Evil, Speak No Evil"]
  
    
   static let phrases =  [
        (chars: "💰❌🌳", def: "Money doesn’t grow on trees."),
        (chars:"❌⏰🐣", def: "Don’t count your chickens before they hatch."),
        (chars: "📞📅", def: "Call it a day"),
        (chars: "▶️🔥", def: "Play with fire."),
        (chars: "👫🚤", def: "We’re all in the same boat"),
        (chars: "🚫🏠", def: "There’s no place like home."),
        (chars: "✋🐴", def: "Hold your horses."),
        (chars:"🙈🙉🙊", def: "See no evil; hear no evil; speak no evil.")
    ]
    
}



