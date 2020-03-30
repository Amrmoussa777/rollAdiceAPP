//
//  ViewController.swift
//  Roll_dice
//
//  Created by Amr Moussa on 3/30/20.
//  Copyright © 2020 Amr Moussa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    let images = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    var score = 0
    override func viewDidLoad() {
        super.viewDidLoad()
      // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let leftNumber=Int.random(in: 0...5)
        let rightNumber=Int.random(in: 0...5)
        leftDiceImageView.image = images[leftNumber]
        rightDiceImageView.image = images[rightNumber]
        if leftNumber == rightNumber || (leftNumber == 5 && rightNumber == 5) {
            score += 1
        }
        scoreLabel.text = String(score)
        
    }
    
}

