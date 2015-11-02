//
//  KeyboardButton.swift
//  TypingPractice
//
//  Created by Mac Bellingrath on 11/2/15.
//  Copyright © 2015 Jo Albright. All rights reserved.
//

import UIKit

class KeyboardButton: UIView {
  
    
}


extension UIView{
    func scaleByFactor(factor: CGFloat, animationDuration: NSTimeInterval){
    UIView.animateWithDuration(animationDuration, animations: {[weak self] in let strongSelf = self!
    strongSelf.transform = CGAffineTransformMakeScale(factor, factor)
    })
    
    }
   
    func resetScalingWithAnimationDuration(duration: NSTimeInterval){ scaleByFactor(1.0, animationDuration: duration)
    }
}
