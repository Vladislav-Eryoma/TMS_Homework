//
//  SecondViewController.swift
//  Homework 9
//
//  Created by Vladislav Eryoma on 4.05.22.
//

import UIKit

class SecondViewController: UIViewController {

    var viewArray:[UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Задание № 2 - Тап по экрану"
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapGesture))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc func didTapGesture(sender: UITapGestureRecognizer) {
        
        for (index, view2) in viewArray.enumerated() {
            let viewPoint = sender.location(in: view2)
            if (viewPoint.x > 0 && viewPoint.x < 70) && (viewPoint.y > 0 && viewPoint.y < 70) {
                view2.removeFromSuperview()
                viewArray.remove(at: index)
                return
            }
        }
        
        let view = UIView(frame: .init(x: 0, y: 0, width: 70, height: 70))
        view.backgroundColor = .red
        
        view.layer.cornerRadius = 35
        view.clipsToBounds = true
        
        let point = sender.location(in: self.view)
        view.center = point
        
        viewArray.append(view)
        self.view.addSubview(view)
    }
    
}
