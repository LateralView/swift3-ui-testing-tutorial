//
//  UITextField.swift
//  UITestExample
//
//  Created by federico mazzini on 5/5/17.
//  Copyright © 2017 Lateral View. All rights reserved.
//

import UIKit

extension UITextField{
    @IBInspectable var placeHolderColor: UIColor?
        {
        
        get {
            return self.placeHolderColor
        }
        
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSForegroundColorAttributeName: newValue!])
        }
    }
}
