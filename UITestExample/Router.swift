//
//  Router.swift
//  UITestExample
//
//  Created by Leandro Tami on 3/29/17.
//  Copyright © 2017 Lateral View. All rights reserved.
//

import UIKit

class Router {
    
    static let instance = Router()
    
    private init() {
        
    }
    
    func start() {
        if User.current.isSignedIn {
            showHome()
        } else {
            showLogin()
        }
    }
    
    func showHome() {
        let sb = UIStoryboard(name: Identifiers.storyboards.main, bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: Strings.ViewControllers.home)
        if let delegate = UIApplication.shared.delegate {
            delegate.window??.rootViewController = vc
        }
    }
    
    func showLogin() {
        let sb = UIStoryboard(name: Identifiers.storyboards.login, bundle: nil)
        if let vc = sb.instantiateInitialViewController() {
            let delegate = UIApplication.shared.delegate
            delegate?.window??.rootViewController = vc
        }
    }
    
}
