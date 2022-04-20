//
//  SecondViewController.swift
//  Homework 6
//
//  Created by Vladislav Eryoma on 20.04.22.
//

import UIKit

class SecondViewController: UIViewController {

    var firstMovedView: UIView = UIView()
    var secondMovedView: UIView = UIView()
    var thirdMovedView: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        firstMovedView.frame = CGRect(x: 50, y: 300, width: 120, height: 120)
        firstMovedView.backgroundColor = .yellow
        self.view.addSubview(firstMovedView)
        
        var firstNewView = UIView(frame: CGRect(x: 50, y: 300, width: 120, height: 120))
        firstNewView.backgroundColor = .yellow
        self.view.addSubview(firstNewView)
        
        secondMovedView.frame = CGRect(x: 50, y: 100, width: 150, height: 150)
        secondMovedView.backgroundColor = .red
        self.view.addSubview(secondMovedView)
        
        var secondNewView = UIView(frame: CGRect(x: 50, y: 100, width: 150, height: 150))
        secondNewView.backgroundColor = .red
        self.view.addSubview(secondNewView)
        
        thirdMovedView.frame = CGRect(x: 50, y: 300, width: 120, height: 120)
        thirdMovedView.backgroundColor = .yellow
        self.view.addSubview(thirdMovedView)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        firstMovedView.frame = CGRect(x: 220, y: 300, width: 180, height: 180)
        firstMovedView.backgroundColor = .green
        
        secondMovedView.frame = CGRect(x: 220, y: 100, width: 180, height: 180)
        secondMovedView.backgroundColor = .orange
        
        thirdMovedView.frame = CGRect(x: 70, y: 520, width: 300, height: 300)
        thirdMovedView.backgroundColor = .blue
        
    }

}
