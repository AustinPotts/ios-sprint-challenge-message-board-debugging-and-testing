//
//  Message_BoardUITests.swift
//  Message BoardUITests
//
//  Created by Spencer Curtis on 9/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest

class Message_BoardUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        app = XCUIApplication()
        
        // NOTE: Keep this setup as is for UI Testing
        app.launchArguments = ["UITesting"]
        app.launch()
    }
    
    func testThreadCreation() {
        createThread.tap()
        createThread.typeText("UI Testing")
        app.keyboards.buttons["Return"].tap()
        XCTAssertTrue(app.tables.staticTexts["UI Testing"].exists)
    }
    
    
    // MARK: - Helpers
    private var createThread: XCUIElement {
        return app.tables.textFields["Create a new thread:"]
    }
    
}
