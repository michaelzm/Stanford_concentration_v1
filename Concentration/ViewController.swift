//
//  ViewController.swift
//  Concentration
//
//  Created by Michael Zemler on 03.08.18.
//  Copyright © 2018 Michael Zemler. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    var flipCount = 0 {
        didSet {
        flipCountLabel.text = "🤕: \(flipCount)"
        }
    }
    @IBOutlet weak var flipCountLabel: UILabel!
    
    var emojiChoices = ["🍺","🍺🍺","🍺🍺🍺","🍺🍺"]
    @IBOutlet var cardButtons: [UIButton]!

    var randomNumber: Int {
        return Int(arc4random_uniform(UInt32(3)) + UInt32(0));
    }
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
            flipCard(withEmoji: emojiChoices[randomNumber], on: sender)
        
    }

    func flipCard(withEmoji emoji: String, on button: UIButton){
        print("flipCardwithEmoji: \(emoji))")
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}

