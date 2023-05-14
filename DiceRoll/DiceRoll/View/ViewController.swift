//
//  ViewController.swift
//  DiceRoll
//
//  Created by Sachin Sabat on 25/04/23.
//

import UIKit

final class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var imgDice1: UIImageView!
    @IBOutlet weak var imgDice2: UIImageView!
    @IBOutlet weak var imgLogo: UIImageView!
    
    private var viewModel: ViewModelInputProtocol = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    private func setupLogoImage() {
        imgLogo.image = UIImage(named: Images.Logo.rawValue)
    }
    
    private func setupDiceImage() {
        imgDice1.image = UIImage(named: Images.Dice1.rawValue)
        imgDice2.image = UIImage(named: Images.Dice2.rawValue)
    }
    
    private func setupViewModel() {
        viewModel.view = self
        viewModel.generateRandomNumber()
    }
    
    @IBAction func btnRoll(_ sender: UIButton) {
        viewModel.generateRandomNumber()
    }
    
    private func displayDice(diceRollFirst: Int, diceRollSecond: Int) {
        dispplayFirstDice(dispplayFirstDice: diceRollFirst)
        dispplaySecondDice(dispplaySecondDice: diceRollSecond)
    }
    
    private func dispplayFirstDice(dispplayFirstDice: Int) {
        switch dispplayFirstDice {
        case 1:
            imgDice1.image = UIImage(named: Images.Dice1.rawValue)
        case 2:
            imgDice1.image = UIImage(named: Images.Dice2.rawValue)
        case 3:
            imgDice1.image = UIImage(named: Images.Dice3.rawValue)
        case 4:
            imgDice1.image = UIImage(named: Images.Dice4.rawValue)
        case 5:
            imgDice1.image = UIImage(named: Images.Dice5.rawValue)
        case 6:
            imgDice1.image = UIImage(named: Images.Dice6.rawValue)
        default:
            print("error")
        }
    }
    
    private func dispplaySecondDice(dispplaySecondDice: Int) {
        switch dispplaySecondDice {
        case 1:
            imgDice2.image = UIImage(named: Images.Dice1.rawValue)
        case 2:
            imgDice2.image = UIImage(named: Images.Dice2.rawValue)
        case 3:
            imgDice2.image = UIImage(named: Images.Dice3.rawValue)
        case 4:
            imgDice2.image = UIImage(named: Images.Dice4.rawValue)
        case 5:
            imgDice2.image = UIImage(named: Images.Dice5.rawValue)
        case 6:
            imgDice2.image = UIImage(named: Images.Dice6.rawValue)
        default:
            print("error")
        }
    }
    
}

extension ViewController: ViewModelOutputProtocol {
    func updateDice(diceRollFirst: Int, diceRollSecond: Int) {
        self.displayDice(diceRollFirst: diceRollFirst, diceRollSecond: diceRollSecond)
    }
}

