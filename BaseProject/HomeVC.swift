//
//  HomeVC.swift
//  BaseProject
//
//  Created by Leandro Tami on 3/29/17.
//  Copyright © 2017 Lateral View. All rights reserved.
//

import UIKit

class HomeVC: UIViewController
{
    
    override func viewWillAppear(_ animated: Bool)
    {
        if !User.current.isSignedIn {
            let sb = UIStoryboard(name: Identifiers.storyboards.login, bundle: nil)
            if let vc = sb.instantiateInitialViewController() {
                self.present(vc, animated: false, completion: nil)
            }
        }
    }
    
}
