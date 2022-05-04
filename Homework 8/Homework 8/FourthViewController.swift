//
//  FourthViewController.swift
//  Homework 8
//
//  Created by Vladislav Eryoma on 28.04.22.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    
    var customTitle: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        titleLabel.text = customTitle
        
    }
    
    @IBAction func didTapOpenFifthScreen() {
        
        let str: UIStoryboard = UIStoryboard(name: "Fifth", bundle: nil)
        
        let vc: FifthViewController = str.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
        
        vc.customTitle = customTitle
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        // self.present(vc, animated: true)
        
    }
    
}
