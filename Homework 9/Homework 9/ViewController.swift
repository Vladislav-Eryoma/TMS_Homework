//
//  ViewController.swift
//  Homework 9
//
//  Created by Vladislav Eryoma on 4.05.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Начальный экран"
    }
    
    @IBAction func didTapSecondTask() {
        
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc2: SecondViewController = str.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        self.navigationController?.pushViewController(vc2, animated: true)
        
        vc2.modalPresentationStyle = .fullScreen
        vc2.modalTransitionStyle = .crossDissolve
    }
    
    @IBAction func didTapThirdTask() {
        
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc3: ThirdViewController = str.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        
        self.navigationController?.pushViewController(vc3, animated: true)
        
        vc3.modalPresentationStyle = .fullScreen
        vc3.modalTransitionStyle = .crossDissolve
    }
    
    @IBAction func didTapFourthTask() {
        
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc4: FourthViewController = str.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        
        self.navigationController?.pushViewController(vc4, animated: true)
        
        vc4.modalPresentationStyle = .fullScreen
        vc4.modalTransitionStyle = .crossDissolve
    }
    
}
