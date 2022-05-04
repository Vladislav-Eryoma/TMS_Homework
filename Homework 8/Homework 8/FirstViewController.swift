//
//  FirstViewController.swift
//  Homework 8
//
//  Created by Vladislav Eryoma on 27.04.22.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var titleLabel1: UILabel!
    @IBOutlet var titleLabel2: UILabel!
    @IBOutlet var titleLabel3: UILabel!
    
    var customTitle: String = ""
    
    var secondTask: secondHomeworkTask?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        titleLabel.text = customTitle
        
        titleLabel1.text = secondTask!.firstParameter
        titleLabel2.text = secondTask!.secondParameter
        titleLabel3.text = secondTask!.thirdParameter
        
    }
    
    @IBAction func didTapOpenSecondScreen() {
        
        let str: UIStoryboard = UIStoryboard(name: "Second", bundle: nil)
        
        let vc: SecondViewController = str.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        vc.customTitle = customTitle
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        //  self.present(vc, animated: true)
        
    }
    
}
