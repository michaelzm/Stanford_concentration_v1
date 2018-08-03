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
        //property observer
        didSet {
        flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    //muss nicht initialisiert werden, ! sehr wichtig
    @IBOutlet weak var flipCountLabel: UILabel!
    
    var emojiChoices = ["🎃","👻","🎃","👻"]
    //Array UIButton
    @IBOutlet var cardButtons: [UIButton]!
    
    //! = assume optional is set and grab associated value
    //unwrap optionals with if
    //nil=optional not set
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }
    }

    //should be read just like an english sentence
    func flipCard(withEmoji emoji: String, on button: UIButton){
        print("flipCardwithEmoji: \(emoji))")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}

