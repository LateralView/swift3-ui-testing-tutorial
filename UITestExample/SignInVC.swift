//
//  SignInVC.swift
//  UITestExample
//
//  Created by Leandro Tami on 3/29/17.
//  Copyright © 2017 Lateral View. All rights reserved.
//

import UIKit

class SignInVC: UIViewController
{
    @IBOutlet weak var mailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
   
    // MARK: - IBActions
    
    @IBAction func doSignIn(_ sender: Any) {
        if fieldsAreEmpty() {
            presentAlert(title: nil, message: Strings.Alerts.Messages.emptyFields, buttonTitle: Strings.DefaultPositive, actions: nil)
        } else {
            UITestExampleAPI.shared.signIn(
                email: mailField!.text!,
                password: passwordField.text!,
                handler: { (result, error) in
                    if result != nil {
                        // Successfully logged
                        self.dismiss(animated: false, completion: {
                            Router.instance.showHome()
                        })
                    } else {
                        self.presentAlert(title: nil, message: error, buttonTitle: Strings.DefaultPositive, actions: nil)
                    }
            })
        }
    }
    
    @IBAction func doDismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    //MARK: Custom methods
    
    func fieldsAreEmpty() -> Bool {
        
        let fieldsArray = [mailField,
                           passwordField]
        
        for textField in fieldsArray {
            let str = textField!.text
            let whitespaceSet = CharacterSet.whitespaces
            
            if str != nil {
                if str!.trimmingCharacters(in: whitespaceSet) == "" {
                    return true
                }
            } else {
                return true
            }
        }
        return false
    }
    
}

