//
//  BrainTests.swift
//  RockPaperScissors
//
//  Created by Sam on 6/26/16.
//  Copyright © 2016 Sam Galizia. All rights reserved.
//

import XCTest
@testable import RockPaperScissors

class BrainTests: XCTestCase {
  
  let brain = Brain()

  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func test_checkReturnsPlayer() {
    let result = brain.check()
    XCTAssertNotNil(result)
  }

}
