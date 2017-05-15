//
//  UITestExampleAPI.swift
//  UITestExample
//
//  Created by Federico Mazzini on 7/5/16.
//  Copyright © 2016 Federico Mazzini. All rights reserved.
//

import Alamofire

enum ResponseCodes : Int {
    case created    = 201
    case ok         = 200
}

class UITestExampleAPI {
    
    let alamoFireManager : Alamofire.SessionManager
    
    static let shared    = UITestExampleAPI()
    
    init() {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 10
        configuration.timeoutIntervalForResource = 10
        self.alamoFireManager = Alamofire.SessionManager(configuration: configuration)
    }

}
