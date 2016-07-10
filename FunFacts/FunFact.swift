//
//  FunFact.swift
//  FunFacts
//
//  Created by Jake Adams on 7/9/16.
//  Copyright © 2016 Pedantic Consultants. All rights reserved.
//

import Foundation

struct FunFact {
  private let facts = ["Some perls of wisdom",
                       "If you're looking for clever, you came to the wrong place",
                       "What is this place?"]
  
  func randomFact() -> String {
    let rand = Int.random(upperBound: facts.count)
    
    return facts[rand]
  }
}
