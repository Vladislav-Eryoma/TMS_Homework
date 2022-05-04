//
//  RacingGameController.swift
//  Homework 8
//
//  Created by Vladislav Eryoma on 28.04.22.
//

import UIKit

class RacingGameController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Racing Game"
    }
    
    @IBAction func didTapOpenNewGame() {

        let str1: UIStoryboard = UIStoryboard(name: "Racing", bundle: nil)

        let gameController: NewGameController = str1.instantiateViewController(withIdentifier: "NewGameController") as! NewGameController

        gameController.modalPresentationStyle = .fullScreen
        gameController.modalTransitionStyle = .flipHorizontal
        self.present(gameController, animated: true)
        
    }
    
    @IBAction func didTapOpenLeaderboard() {

        let str1: UIStoryboard = UIStoryboard(name: "Racing", bundle: nil)

        let gameController: LeaderboardController = str1.instantiateViewController(withIdentifier: "LeaderboardController") as! LeaderboardController

        gameController.modalPresentationStyle = .fullScreen
        gameController.modalTransitionStyle = .flipHorizontal
        self.present(gameController, animated: true)
        
    }
    
    @IBAction func didTapOpenSettings() {

        let str1: UIStoryboard = UIStoryboard(name: "Racing", bundle: nil)

        let gameController: SettingsController = str1.instantiateViewController(withIdentifier: "SettingsController") as! SettingsController

        gameController.modalPresentationStyle = .fullScreen
        gameController.modalTransitionStyle = .flipHorizontal
        self.present(gameController, animated: true)
    }
    
}
