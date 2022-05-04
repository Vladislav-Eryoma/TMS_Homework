//
//  SecondViewController.swift
//  Homework 8
//
//  Created by Vladislav Eryoma on 27.04.22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    
    var customTitle: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        titleLabel.text = customTitle
        
    }
    
    @IBAction func didTapOpenThirdScreen() {
        
        let str: UIStoryboard = UIStoryboard(name: "Third", bundle: nil)
        
        let vc: ThirdViewController = str.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        
        vc.customTitle = customTitle
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        // self.present(vc, animated: true)
        
    }
    
}
