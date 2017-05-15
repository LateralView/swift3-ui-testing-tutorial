//
//  UITestExampleAPI-SignIn.swift
//  UITestExample
//
//  Created by Federico Mazzini on 7/18/16.
//  Copyright © 2016 Federico Mazzini. All rights reserved.
//

import Alamofire
import SwiftyJSON

extension UITestExampleAPI {
    
    func signIn(
        email: String,
        password: String,
        handler: @escaping (_ response: User?, _ error: String?) -> Void)
    {
        let parameters: [String: AnyObject] = [
            Keys.SignIn.email : email as AnyObject,
            Keys.SignIn.password : password as AnyObject
            ]
        
        let url = Keys.baseURL + Keys.SignIn.path
        
        Alamofire.request(url, method: HTTPMethod.post, parameters: parameters, encoding: JSONEncoding.default, headers: nil)

            .responseJSON { response in
                
                if let myValue = response.result.value {
                    if response.response?.statusCode == ResponseCodes.ok.rawValue {
                        
                        let json = JSON(myValue)
                        
                        let userJson = json[Keys.SignIn.user]
                        let user = User(json: userJson)
                        
                        let token = json[Keys.SignIn.token].stringValue
                        
                        User.current.id = user.id
                        User.current.email = user.email
                        User.current.name = user.name
                        User.current.token = token
                        
                        handler(user, nil)
                        
                    } else {
                        handler(nil, "Error")
                    }
                } else {
                    handler(nil, "Error")
                }
        }
    }
    
}
