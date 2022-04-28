//
//  FifthViewController.swift
//  Homework 8
//
//  Created by Vladislav Eryoma on 28.04.22.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    
    var customTitle: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        titleLabel.text = customTitle
        
    }
    
    @IBAction func didTapClose() {
        self.dismiss(animated: true)
    }
    
}
