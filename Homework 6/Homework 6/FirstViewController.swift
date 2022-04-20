//
//  FirstViewController.swift
//  Homework 6
//
//  Created by Vladislav Eryoma on 19.04.22.
//

import UIKit

class FirstViewController: UIViewController {
    
    var movedView: UIView = UIView()
    var secondMovedView: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        movedView.frame = CGRect(x: 100, y: 350, width: 250, height: 250)
        movedView.backgroundColor = .yellow
        self.view.addSubview(movedView)
        
        movedView.layer.cornerRadius = 125
        movedView.clipsToBounds = true
        
        secondMovedView.frame = CGRect(x: 100, y: 350, width: 250, height: 250)
        secondMovedView.backgroundColor = .yellow
        self.view.addSubview(secondMovedView)
        
        secondMovedView.layer.cornerRadius = 125
        secondMovedView.clipsToBounds = true
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        movedView.frame = CGRect(x: 100, y: 350, width: 250, height: 250)
        movedView.backgroundColor = .yellow
        self.view.addSubview(movedView)
        
    }
    
    @IBAction func removeAndMotionView() {
        movedView.removeFromSuperview()
        
        secondMovedView.frame = CGRect(x: 100, y: 70, width: 250, height: 250)
        secondMovedView.backgroundColor = .green
        self.view.addSubview(secondMovedView)
        
    }
    
}
