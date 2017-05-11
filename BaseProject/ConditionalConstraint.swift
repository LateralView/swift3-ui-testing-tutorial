//
//  ConditionalConstraint.swift
//  BaseProject
//
//  Created by federico mazzini on 5/4/17.
//  Copyright © 2017 Lateral View. All rights reserved.
//

import UIKit

class ConditionalConstraint: NSLayoutConstraint {
    
    @IBInspectable
    var 📱3¨5_inch: CGFloat = 0 {
        didSet {
            if UIScreen.main.bounds.maxY == 480 {
                constant = 📱3¨5_inch
            }
        }
    }
    
    @IBInspectable
    var 📱4¨0_inch: CGFloat = 0 {
        didSet {
            if UIScreen.main.bounds.maxY == 568 {
                constant = 📱4¨0_inch
            }
        }
    }
    
    @IBInspectable
    var 📱4¨7_inch: CGFloat = 0 {
        didSet {
            if UIScreen.main.bounds.maxY == 667 {
                constant = 📱4¨7_inch
            }
        }
    }
    
    @IBInspectable
    var 📱5¨5_inch: CGFloat = 0 {
        didSet {
            if UIScreen.main.bounds.maxY == 736 {
                constant = 📱5¨5_inch
            }
        }
    }
}
