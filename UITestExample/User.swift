//
//  User.swift
//  UITestExample
//
//  Created by Leandro Tami on 3/29/17.
//  Copyright © 2017 Lateral View. All rights reserved.
//

import Foundation
import SwiftyJSON

class User {
    
    var id    : String?
    var email : String?
    var name  : String?
    var token : String?
    
    static let current = User(id: nil,
                              email: nil,
                              token: nil,
                              name: nil)
    
    let isSignedIn = false
    
    init(id: String?,
         email: String?,
         token: String?,
         name: String?) {
        
        self.id    = id
        self.email = email
        self.name  = name
        self.token = token
    }
    
    init(json: JSON)
    {
        self.id    = json[Keys.SignIn.id].stringValue
        self.email = json[Keys.SignIn.email].stringValue
        self.name  = json[Keys.SignIn.name].stringValue
        self.name  = json[Keys.SignIn.token].stringValue
    }
    
}
