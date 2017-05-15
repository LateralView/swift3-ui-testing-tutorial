//
//  Strings.swift
//  UITestExample
//
//  Created by Leandro Tami on 3/28/17.
//  Copyright © 2017 Lateral View. All rights reserved.
//

import Foundation

struct Strings
{
    static let DefaultPositive = "Ok"
    static let DefaultNegative = "Cancel"
    
    struct SignIn {
        
        static let defaultButtonTitle = NSLocalizedString("sign_in_default_button_title", comment: "")
        
    }
    
    struct Flags {
        static let deleteUserDefaultsFlag = "deleteUserDefaults"
        static let networkStubsFlag = "networkStubs"
    }

    struct SignUp {
        
        
        
    }

    struct ForgotPassword {
        
        
    }
    
    struct ViewControllers {
        static let home = "HomeVC"
        
    }
    
    struct Alerts {
        struct Messages {
            static let emptyFields = "There are empty fields"
            
        }
    }
    
    struct ProcessArguments {
        static let deleteUserDefaultsFlag = "deleteUserDefaults"
        static let networkStubsFlag = "networkStubs"
    }

}
