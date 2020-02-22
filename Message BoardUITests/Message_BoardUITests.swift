//
//  Message_BoardUITests.swift
//  Message BoardUITests
//
//  Created by Spencer Curtis on 9/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest

class Message_BoardUITests: XCTestCase {
    

    
    override func setUp() {
        super.setUp()
        
         continueAfterFailure = false
         let app = XCUIApplication()
               
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
    
    var app: XCUIApplication {
         return XCUIApplication()
     }
         
     private var sender: XCUIElement {
         return app.textFields["SenderNameTextField"]
     }
     
     private var messageText: XCUIElement {
         return app.textViews["MessageTextview"]
     }
    
    func testMessageCreation() {
           
           createThread.tap()
           createThread.typeText("UI Testing")
           app.keyboards.buttons["Return"].tap()
           
           let newThread = app.tables.staticTexts["UI Testing"]
           XCTAssertTrue(newThread.exists)
           newThread.tap()
           app.navigationBars.buttons["Add"].tap()
           
           let nameField = app.textFields["Enter your name:"]
           nameField.tap()
           nameField.typeText("Test Name")
           let messageTextView = app.textViews.element(boundBy: 0)
           messageTextView.tap()
           messageTextView.typeText("New Message Test")
           let saveButton = app.buttons["Send"]
           saveButton.tap()
           XCTAssert(app.tables.cells.staticTexts["Test Name"].exists)
           
           let newMessage = app.tables.staticTexts["New Message Test"]
           XCTAssertTrue(newMessage.exists)
       }
    
}
