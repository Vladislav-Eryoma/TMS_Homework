//
//  FirstViewController.swift
//  Homework 8
//
//  Created by Vladislav Eryoma on 27.04.22.
//

import UIKit

class FirstViewController: UIViewController {

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
    
    @IBAction func didTapOpenSecondScreen() {
        
        let str: UIStoryboard = UIStoryboard(name: "Second", bundle: nil)
        
        let vc: SecondViewController = str.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        vc.customTitle = customTitle
        
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true)
        
    }
    
}
