//
//  FunFact.swift
//  FunFacts
//
//  Created by Jake Adams on 7/9/16.
//  Copyright © 2016 Pedantic Consultants. All rights reserved.
//

import Foundation

struct FunFact {
  private let facts = ["children as super annoying",
                       "there are times when I want to be childless again",
                       "like right now holy crap"]
  
  func randomFact() -> String {
    let rand = Int.random(upperBound: facts.count)
    
    return facts[rand]
  }
}
