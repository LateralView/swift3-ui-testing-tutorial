//
//  String.swift
//  BaseProject
//
//  Created by Fernando Gonzalez on 2/24/17.
//  Copyright © 2017 LateralView. All rights reserved.
//

import UIKit

extension String
{
    
    var stringByRemovingWhitespaces: String {
        return components(separatedBy: .whitespaces).joined(separator: "")
    }
    
    var stringByEscapingSlashes: String {
        return components(separatedBy: "+").joined(separator: "\\+")
    }

    var isValidMail : Bool {
        // from: http://www.ios-blog.co.uk/tutorials/objective-c/objective-c-validate-e-mail-address/
        guard self.characters.count > 0 else {
            return false
        }
        
        let regexStr = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        do {
            let regex = try NSRegularExpression(pattern: regexStr, options: .caseInsensitive)
            let matches = regex.numberOfMatches(in: self, options: [], range: NSMakeRange(0, self.characters.count))
            return matches == 1
        } catch {
            return false
        }
    }
    
    var isEmpty : Bool {
        return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).characters.count == 0
    }
    
    var isValidInteger : Bool {
        return Int(self) != nil
    }
    
    func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSFontAttributeName: font], context: nil)
        return boundingBox.height
    }

}
