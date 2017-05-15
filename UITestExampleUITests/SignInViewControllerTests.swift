//
//  SignInViewControllerTests.swift
//  UITestExample UITests
//
//  Created by federico mazzini on 3/13/17.
//  Copyright © 2017 Federico Mazzini. All rights reserved.
//

import XCTest

class SignInViewControllerTests: XCTestCase {
    
    let app = XCUIApplication()
    
    //Strings
    let emptyFieldsText = Strings.Alerts.Messages.emptyFields
    let homeScreenTitle = "This is the home screen"
    
    let validMail = "testUser@lateralview.net"
    let validPassword = "password"
    
    override func setUp() {
        super.setUp()
        
        /* continueAfterFailure indicates if the test case should continue
         running after a failure occurs. */
        continueAfterFailure = false
        
        app.launchArguments.append(Strings.Flags.networkStubsFlag)
        app.launchArguments.append(Strings.Flags.deleteUserDefaultsFlag)
        
        app.launch()
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    func testSignInVC_signInWithEmptyFields_ShowsEmptyFieldsAlert() {
        app.buttons["Sign In With Email"].tap()
        app.buttons["Sign In"].tap()
        
        XCTAssert(app.alerts.element.staticTexts[emptyFieldsText].exists)
    }
    
    func testSignInVC_signInWithValidCredentials_ShowsHome() {
        app.buttons["Sign In With Email"].tap()
        
        app.textFields["E-mail"].tap()
        app.typeText(validMail)
        let passwordSecureTextField = app.secureTextFields["Password"]
        passwordSecureTextField.tap()
        passwordSecureTextField.typeText(validPassword)
        
        app.buttons["Sign In"].tap()
        
        XCTAssert(app.staticTexts[homeScreenTitle].exists)
    }
    
}
