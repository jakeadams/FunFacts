//
//  ViewController.swift
//  FunFacts
//
//  Created by Jake Adams on 7/9/16.
//  Copyright © 2016 Pedantic Consultants. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var funFactLabel: UILabel!
  
  @IBOutlet weak var funFactButton: UIButton!
  
  let funFact = FunFact()
  let colorWheel = ColorWheel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    funFactLabel.text = funFact.randomFact()
  }

  override func preferredStatusBarStyle() -> UIStatusBarStyle {
    
    //LightContent
    return UIStatusBarStyle.lightContent
    
  }

  @IBAction func showFunFact() {
    colorWheel.transitionBackgroundColor(view: self.view) { color in
      self.funFactButton.tintColor = color
    }
    funFactLabel.text = funFact.randomFact()
//    let alert = UIAlertController.init(title: "Success", message: "We made it!", preferredStyle: .alert)
//    alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil ))
//    
//    self.present(alert, animated: false)
  }
}

