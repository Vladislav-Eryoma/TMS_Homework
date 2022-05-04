//
//  ViewController.swift
//  Homework 8
//
//  Created by Vladislav Eryoma on 27.04.22.
//

import UIKit

// Создание класса для второго задания
class secondHomeworkTask {
    
    var firstParameter: String = ""
    var secondParameter: String = ""
    var thirdParameter: String = ""
    
    init() {}
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Start Screen"
    }
    
    @IBAction func didTapOpenFirstScreen() {
        
        let str: UIStoryboard = UIStoryboard(name: "First", bundle: nil)
        
        let vc: FirstViewController = str.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        
        // Класс для второго задания. Передаю параметры на FirstViewController
        let secondHomeworkTask: secondHomeworkTask = secondHomeworkTask()
        
        secondHomeworkTask.firstParameter = "Первый параметр"
        secondHomeworkTask.secondParameter = "Второй параметр"
        secondHomeworkTask.thirdParameter = "Третий параметр"
        
        vc.secondTask = secondHomeworkTask
        
        vc.customTitle = "Передаю этот текст через все экраны"
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        // self.present(vc, animated: true)
        
    }
    
    @IBAction func didTapOpenRacingGame() {

        let str1: UIStoryboard = UIStoryboard(name: "Racing", bundle: nil)

        let gameController: RacingGameController = str1.instantiateViewController(withIdentifier: "RacingGameController") as! RacingGameController
        
        self.navigationController?.pushViewController(gameController, animated: true)

        gameController.modalPresentationStyle = .fullScreen
        gameController.modalTransitionStyle = .flipHorizontal
        // self.present(gameController, animated: true)
    }
    
}

// Задание № 4. Создание произвольных классов
enum Color: String {
    case black
    case white
    case red
    case blue
    case green
}

class Automobile {
    let year: Int
    let maxSpeed: Int
    var color: Color = .black
    
    init(year: Int, speed: Int) {
        self.year = year
        self.maxSpeed = speed
    }
}

let automobile = Automobile(year: 2015, speed: 300)

class Coupe: Automobile {
    var brand: String
    let price: String
    let country: String
    
    init (brand: String, price: String, country: String, year: Int, speed: Int) {
        self.brand = brand
        self.price = price
        self.country = country
        super.init(year: year, speed: speed)
    }
}

let coupe = Coupe(brand: "Audi", price: "30000", country: "Germany", year: 2015, speed: 320)
