//
//  ViewModel.swift
//  DiceRoll
//
//  Created by Sachin Sabat on 25/04/23.
//

import Foundation

final class ViewModel: ViewModelInputProtocol {
    weak var view: ViewModelOutputProtocol?
    
    func generateRandomNumber() {
        let diceRollFirst = Int(arc4random_uniform(6) + 1)
        let diceRollSecond = Int(arc4random_uniform(6) + 1)
        self.view?.updateDice(diceRollFirst: diceRollFirst, diceRollSecond: diceRollSecond)
    }
}
