//
//  ThirdViewController.swift
//  Homework 8
//
//  Created by Vladislav Eryoma on 28.04.22.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    
    var customTitle: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        titleLabel.text = customTitle
        
    }
    
    @IBAction func didTapOpenFourthScreen() {
        
        let str: UIStoryboard = UIStoryboard(name: "Fourth", bundle: nil)
        
        let vc: FourthViewController = str.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        
        vc.customTitle = customTitle
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        // self.present(vc, animated: true)
        
    }
    
}
