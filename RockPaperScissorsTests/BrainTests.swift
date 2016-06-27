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
    
  }
  
  override func tearDown() {
    
    super.tearDown()
  }
  
  func test_checkReturnsOutcome() {
    let result = brain.check(.Rock, compMove: .Scissors)
    XCTAssertEqual(result, Outcome.Win)
  }
  
  func test_playerPicksRock_playerWins() {
    let result = brain.check(.Rock, compMove: .Scissors)
    XCTAssertEqual(result, Outcome.Win)
  }
  
  func test_playerPicksRock_playerLoses() {
    let result = brain.check(.Rock, compMove: .Paper)
    XCTAssertEqual(result, Outcome.Lose)
  }
  
  func test_playerPicksRock_playerTies() {
    let result = brain.check(.Rock, compMove: .Rock)
    XCTAssertEqual(result, Outcome.Tie)
  }
  
  func test_playerPicksPaper_playerWins() {
    let result = brain.check(.Paper, compMove: .Rock)
    XCTAssertEqual(result, Outcome.Win)
  }
  
  func test_playerPicksPaper_playerLoses() {
    let result = brain.check(.Paper, compMove: .Scissors)
    XCTAssertEqual(result, Outcome.Lose)
  }
  
  func test_playerPicksPaper_playerTies() {
    let result = brain.check(.Paper, compMove: .Paper)
    XCTAssertEqual(result, Outcome.Tie)
  }
  
  func test_playerPicksScissors_playerWins() {
    let result = brain.check(.Scissors, compMove: .Paper)
    XCTAssertEqual(result, Outcome.Win)
  }
  
  func test_playerPicksScissors_playerLoses() {
    let result = brain.check(.Scissors, compMove: .Rock)
    XCTAssertEqual(result, Outcome.Lose)
  }
  
  func test_playerPicksScissors_playerTies() {
    let result = brain.check(.Scissors, compMove: .Scissors)
    XCTAssertEqual(result, Outcome.Tie)
  }

}
