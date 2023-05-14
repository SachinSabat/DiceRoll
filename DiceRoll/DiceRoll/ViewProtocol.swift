//
//  ViewProtocol.swift
//  DiceRoll
//
//  Created by Sachin Sabat on 25/04/23.
//

//Blueprint
protocol ViewModelOutputProtocol: AnyObject {
    func updateDice(diceRollFirst: Int, diceRollSecond: Int)
}

protocol ViewModelInputProtocol: AnyObject {
    var view: ViewModelOutputProtocol? { get set }
    func generateRandomNumber()
}
