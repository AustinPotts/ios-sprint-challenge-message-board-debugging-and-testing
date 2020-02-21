//
//  MessageThreadTests.swift
//  MessageBoardTests
//
//  Created by Andrew R Madsen on 9/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Message_Board

class MessageThreadTests: XCTestCase {
    
      let messageThreadsTableViewController = MessageThreadsTableViewController()
      let messageThreadController = MessageThreadController()
      
      func testFetchMessageThreads() {
          XCTAssertNotNil(messageThreadController.messageThreads)
      }
      
      func testThreadCreation() {
          messageThreadController.createMessageThread(with: "test1") {
              XCTAssertTrue(self.messageThreadController.messageThreads[0].title == "test1")
          }
      }
      
      func testMessageCreation() {
          messageThreadController.createMessageThread(with: "test2") {
              XCTAssertTrue(self.messageThreadController.messageThreads[0].title == "test2")
          }
      }
}
