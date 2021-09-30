//
//  ViewController.swift
//  Concentratio
//
//  Created by Mati Montenegro on 20/08/2021.
//

import UIKit

class ViewController: UIViewController
{
    
    lazy var game : Concentration = {
       return Concentration(numberOfPairsOfCards: (cardButtons.count + 1)/2)
    }()


    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    
    @IBOutlet weak var flipCountLabel: UILabel!
    

    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🎃","👻","🎃","👻"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            game.chooseCard(at: cardNumber)
        } else {
        print("chosen card was not in cardButtons")
        }
    }
    
    
    
    func flipCard(withEmoji emoji: String, on button: UIButton)  {
        if  button.currentTitle == emoji {
        button.setTitle("", for: UIControl.State.normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
    } else {
        button.setTitle(emoji, for: UIControl.State.normal)
        button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
        
    }


}

