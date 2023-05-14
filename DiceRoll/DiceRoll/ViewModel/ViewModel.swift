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
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            self.view?.updateDice(diceRollFirst: diceRollFirst, diceRollSecond: diceRollSecond)
        }
    }
}
