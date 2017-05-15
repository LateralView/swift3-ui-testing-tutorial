//
//  RequestStubsHelper.swift
//  UITestExample
//
//  Created by federico mazzini on 3/14/17.
//  Copyright © 2017 Federico Mazzini. All rights reserved.
//

import Foundation
import OHHTTPStubs

class RequestStubsHelper {
    static let shared = RequestStubsHelper()
    
    private let authenticateUserPath = Keys.SignIn.path
    
    func loadStubs() {
        loadAuthenticateUserStub()
    }
    
    func loadAuthenticateUserStub() {
        stub(condition: isPath(authenticateUserPath)) { _ in
            return OHHTTPStubsResponse(fileAtPath:OHPathForFile("AuthenticateUser.json", type(of: self))!,
                                       statusCode:200, headers:["Content-Type":"application/json"])
        }
    }
}
