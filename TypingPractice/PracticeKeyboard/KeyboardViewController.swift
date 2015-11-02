//
//  KeyboardViewController.swift
//  PracticeKeyboard
//
//  Created by Mac Bellingrath on 11/2/15.
//  Copyright © 2015 Jo Albright. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBAction func touchedEmoji(button: UIButton) {
        
        guard let text = button.titleLabel?.text else { return }
        
        textDocumentProxy.insertText(Emoji(char: text).description)

    }
    
    
    @IBOutlet var nextKeyboardButton: UIButton!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Perform custom UI setup here
        self.nextKeyboardButton = UIButton(type: .System)
    
        self.nextKeyboardButton.setTitle(NSLocalizedString("Next Keyboard", comment: "Title for 'Next Keyboard' button"), forState: .Normal)
        self.nextKeyboardButton.sizeToFit()
        self.nextKeyboardButton.translatesAutoresizingMaskIntoConstraints = false
    
        self.nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(self.nextKeyboardButton)
    
        let nextKeyboardButtonLeftSideConstraint = NSLayoutConstraint(item: self.nextKeyboardButton, attribute: .Left, relatedBy: .Equal, toItem: self.view, attribute: .Left, multiplier: 1.0, constant: 0.0)
        let nextKeyboardButtonBottomConstraint = NSLayoutConstraint(item: self.nextKeyboardButton, attribute: .Bottom, relatedBy: .Equal, toItem: self.view, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        self.view.addConstraints([nextKeyboardButtonLeftSideConstraint, nextKeyboardButtonBottomConstraint])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
        
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    
        var textColor: UIColor
        let proxy = self.textDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.Dark {
            textColor = UIColor.whiteColor()
        } else {
            textColor = UIColor.blackColor()
        }
        self.nextKeyboardButton.setTitleColor(textColor, forState: .Normal)
    
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
    
 
    private let hints = ["Money Don't Tree", "Don't Time Hatch", "Call Day", "Play Fire", "Together Boat", "No Home", "Hold Horse", "See No Evil. Hear No Evil, Speak No Evil"]
    
    private let emojiPhrases = [
        "💰❌🌳" : "Money doesn’t grow on trees.",
        "❌⏰🐣":"Don’t count your chickens before they hatch.",
        "📞📅":"Call it a day",
        "▶️🔥":"Play with fire.",
        "👫🚤": "We’re all in the same boat",
        "🚫🏠": "There’s no place like home.",
        "✋🐴": "Hold your horses.",
        "🙈🙉🙊": "See no evil; hear no evil; speak no evil."]
    
}



