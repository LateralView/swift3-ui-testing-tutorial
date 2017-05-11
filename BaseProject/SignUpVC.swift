//
//  SignUpVC.swift
//  BaseProject
//
//  Created by Leandro Tami on 3/29/17.
//  Copyright © 2017 Lateral View. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController
{
    
    // MARK: - IBActions
    
    @IBAction func doSignUp(_ sender: Any) {
        self.dismiss(animated: false, completion: {
            Router.instance.showHome()
        })
    }
    
    @IBAction func doDismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

