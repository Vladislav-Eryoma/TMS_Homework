//
//  ThirdViewController.swift
//  Homework 6
//
//  Created by Vladislav Eryoma on 20.04.22.
//

import UIKit

class ThirdViewController: UIViewController {

    var firstMovedView: UIView = UIView()
    var secondMovedView: UIView = UIView()
    var thirdMovedView: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        firstMovedView.frame = CGRect(x: 100, y: 250, width: 250, height: 250)
        firstMovedView.backgroundColor = .purple
        self.view.addSubview(firstMovedView)
        
        firstMovedView.layer.cornerRadius = 125
        firstMovedView.clipsToBounds = true
        
        secondMovedView.frame = CGRect(x: 100, y: 250, width: 250, height: 250)
        secondMovedView.backgroundColor = .purple
        self.view.addSubview(secondMovedView)
        
        secondMovedView.layer.cornerRadius = 125
        secondMovedView.clipsToBounds = true
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        firstMovedView.frame = CGRect(x: 100, y: 250, width: 250, height: 250)
        firstMovedView.backgroundColor = .purple
        
    }
    
    @IBAction func buttonUp() {
        firstMovedView.removeFromSuperview()
        
        secondMovedView.frame = CGRect(x: 100, y: 50, width: 250, height: 250)
        secondMovedView.backgroundColor = .purple
        
    }
    
    @IBAction func buttonDown() {
        firstMovedView.removeFromSuperview()
        
        secondMovedView.frame = CGRect(x: 100, y: 300, width: 250, height: 250)
        secondMovedView.backgroundColor = .purple
        
    }
    
    @IBAction func buttonLeft() {
        firstMovedView.removeFromSuperview()
        
        secondMovedView.frame = CGRect(x: 15, y: 250, width: 250, height: 250)
        secondMovedView.backgroundColor = .purple
        
    }
    
    @IBAction func buttonRight() {
        firstMovedView.removeFromSuperview()
        
        secondMovedView.frame = CGRect(x: 165, y: 250, width: 250, height: 250)
        secondMovedView.backgroundColor = .purple
        
    }

}
