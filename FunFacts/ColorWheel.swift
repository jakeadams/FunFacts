//
//  ColorWheel.swift
//  FunFacts
//
//  Created by Jake Adams on 7/9/16.
//  Copyright © 2016 Pedantic Consultants. All rights reserved.
//

import Foundation
import UIKit

struct ColorWheel {
  private let colors = [
    UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0),
    UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1),
    UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1),
    UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1)
  ]
  
  func transitionBackgroundColor(view: UIView, otherActions: (UIColor) -> Void) {
    UIView.animate(withDuration: 0.5) {
      let rando = Int.random(upperBound: self.colors.count)
      let color = self.colors[rando]
      view.backgroundColor = color
      otherActions(color)
    }
  }
}
