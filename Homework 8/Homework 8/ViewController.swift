//
//  ViewController.swift
//  Homework 8
//
//  Created by Vladislav Eryoma on 27.04.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapOpenFirstScreen() {
        
        let str: UIStoryboard = UIStoryboard(name: "First", bundle: nil)
        
        let vc: FirstViewController = str.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        
        vc.customTitle = "Передаю этот текст через все экраны"
        
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true)
        
    }
    
    @IBAction func didTapOpenRacingGame() {

        let str1: UIStoryboard = UIStoryboard(name: "Racing", bundle: nil)

        let gameController: RacingGameController = str1.instantiateViewController(withIdentifier: "RacingGameController") as! RacingGameController

        gameController.modalPresentationStyle = .fullScreen
        gameController.modalTransitionStyle = .flipHorizontal
        self.present(gameController, animated: true)
    }
    
}
