//
//  Concentration.swift
//  Concentratio
//
//  Created by Mati Montenegro on 25/09/2021.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    
    func chooseCard(at index: Int) {
        
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards
        {
            let card = Card()
            cards += [card, card]
        }
        //TODO Shuffle the cards
        //requiers value types arrays
    }
}
