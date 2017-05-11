//
//  UIViewController.swift
//  UITestExample
//
//  Created by Fernando Gonzalez on 1/24/17.
//  Copyright © 2017 Lateral View. All rights reserved.
//

import UIKit

extension UIViewController
{
    
    func presentAlert(
        title: String?  = "",
        message: String?,
        buttonTitle: String = Strings.DefaultPositive,
        actions: [UIAlertAction]? = nil
    )
    {
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: UIAlertControllerStyle.alert
        )
        
        alertController.addAction(
            UIAlertAction(
                title: buttonTitle,
                style: UIAlertActionStyle.default,
                handler: nil
        ))
        
        if actions != nil {
            for action in actions! {
                alertController.addAction(action)
            }
        }
        
        self.present(alertController, animated: true, completion: nil)
    }

    func startLoading() {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func stopLoading() {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }

    func removeBackButton() {
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
    }
}
