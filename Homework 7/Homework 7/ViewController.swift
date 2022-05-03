//
//  ViewController.swift
//  Homework 7
//
//  Created by Vladislav Eryoma on 29.04.22.
//

import UIKit

enum ColorStyle: Int {
    case redColor = 1
    case whiteColor = 2
    case blueColor = 3
    case greenColor = 4
    
    func getColor() -> UIColor {
        switch self {
        case .redColor:
            return .red
        case .whiteColor:
            return .white
        case .blueColor:
            return .blue
        case .greenColor:
            return .green
        }
    }
    
    func getText() -> String {
        switch self {
        case .redColor:
            return "Red"
        case .whiteColor:
            return "White"
        case .blueColor:
            return "Blue"
        case .greenColor:
            return "Green"
        }
    }
}

class ViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    
    var squareViews: [UIView] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    @IBAction func didTapCreateSquares() {
        drawViews()
    }
    
    func removeAllSquareViews() {
        squareViews.forEach() { $0.removeFromSuperview() }
        
        squareViews = []
    }
    
    func createView(frame: CGRect, colorStyle: ColorStyle) -> UIView {
        
        let view = UIView(frame: frame)
        view.backgroundColor = colorStyle.getColor()
        
        let label = UILabel(frame: view.bounds)
        label.text = colorStyle.getText()
        label.textAlignment = .center
        view.addSubview(label)
        
        return view
    }
    
    func drawViews() {
        removeAllSquareViews()
        
        let sizeOfSquare = Double(textField.text ?? "") ?? 10.0
        let screenSize: CGRect = UIScreen.main.bounds
        var x = 10.0
        var y = 150.0
        
        for _ in 1...(.random(in: 5...20)) {
            
            if x + sizeOfSquare + 10 > screenSize.size.width {
                y = y + sizeOfSquare + 10
                x = 10
            }
            
            let newFrame = CGRect(x: x, y: y, width: sizeOfSquare, height: sizeOfSquare)
            let colorStyle: ColorStyle = ColorStyle(rawValue: .random(in: 1...4)) ?? .redColor
            let view = createView(frame: newFrame, colorStyle: colorStyle)
            
            x = view.frame.maxX + 10
            
            self.view.addSubview(view)
            squareViews.append(view)
            
        }
    }
}
