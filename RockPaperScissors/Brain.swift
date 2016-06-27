//
//  Brain.swift
//  RockPaperScissors
//
//  Created by Sam on 6/26/16.
//  Copyright © 2016 Sam Galizia. All rights reserved.
//

import Foundation

class Brain: NSObject {
  
  var outcome: Outcome?
  
  func check(playerMove: Move, compMove: Move) -> Outcome {
    
    if playerMove == Move.Rock {
      if compMove == Move.Rock {
        outcome = .Tie
      } else if compMove == Move.Scissors {
        outcome = .Win
      } else {
        outcome = .Lose
      }
    } else if playerMove == Move.Paper {
      if compMove == Move.Paper {
        outcome = .Tie
      } else if compMove == Move.Rock {
        outcome = .Win
      } else {
        outcome = .Lose
      }
    } else if playerMove == Move.Scissors {
      if compMove == Move.Scissors {
        outcome = .Tie
      } else if compMove == Move.Paper {
        outcome = .Win
      } else {
        outcome = .Lose
      }
    }
    
    return outcome!
  }
  
}