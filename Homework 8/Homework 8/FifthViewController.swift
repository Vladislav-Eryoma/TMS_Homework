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
    
    @IBAction func didTapOpenStartScreen() {
        
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc: ViewController = str.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        self.navigationController?.popToRootViewController(animated: true)
        
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        // self.present(vc, animated: true)
    }
    
}
