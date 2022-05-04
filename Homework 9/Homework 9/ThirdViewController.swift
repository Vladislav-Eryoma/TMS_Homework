//
//  ThirdViewController.swift
//  Homework 9
//
//  Created by Vladislav Eryoma on 4.05.22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var firstMovedView: UIView = UIView()
    var secondMovedView: UIView = UIView()
    var thirdMovedView: UIView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Задание № 3"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        firstMovedView.frame = CGRect(x: 100, y: 250, width: 120, height: 120)
        firstMovedView.backgroundColor = .red
        self.view.addSubview(firstMovedView)
        
        firstMovedView.layer.cornerRadius = 60
        firstMovedView.clipsToBounds = true
        
        secondMovedView.frame = CGRect(x: 100, y: 250, width: 120, height: 120)
        secondMovedView.backgroundColor = .red
        self.view.addSubview(secondMovedView)
        
        secondMovedView.layer.cornerRadius = 60
        secondMovedView.clipsToBounds = true
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        firstMovedView.frame = CGRect(x: 100, y: 250, width: 120, height: 120)
        firstMovedView.backgroundColor = .red
        
    }
    
    @IBAction func buttonUp() {
        firstMovedView.removeFromSuperview()
        
        secondMovedView.frame = CGRect(x: 100, y: 50, width: 120, height: 120)
        secondMovedView.backgroundColor = .red
        
    }
    
    @IBAction func buttonDown() {
        firstMovedView.removeFromSuperview()
        
        secondMovedView.frame = CGRect(x: 100, y: 300, width: 120, height: 120)
        secondMovedView.backgroundColor = .red
        
    }
    
    @IBAction func buttonLeft() {
        firstMovedView.removeFromSuperview()
        
        secondMovedView.frame = CGRect(x: 15, y: 250, width: 120, height: 120)
        secondMovedView.backgroundColor = .red
        
    }
    
    @IBAction func buttonRight() {
        firstMovedView.removeFromSuperview()
        
        secondMovedView.frame = CGRect(x: 165, y: 250, width: 120, height: 120)
        secondMovedView.backgroundColor = .red
        
    }
}
