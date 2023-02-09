//
//  ViewController.swift
//  basicAnimation
//
//  Created by APPLE on 02/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    let layer = CALayer()
    let layer2 = CALayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        layer.backgroundColor = UIColor.systemCyan.cgColor
        layer.frame = CGRect(x: 100, y: 200, width: 200, height: 200)
        layer.cornerRadius = 40.0
        view.layer.addSublayer(layer)
        
        layer2.backgroundColor = UIColor.systemTeal.cgColor
        layer2.frame = CGRect(x: 200, y: 200, width: 100, height: 200)
        view.layer.addSublayer(layer2)
        
        DispatchQueue.main.asyncAfter(deadline: .now()+1){
            self.animateMovement()
            self.animateSecond()
        }
        
    }
        
    func animateMovement()
    {
        let animation = CABasicAnimation(keyPath: "position")
        //animation.fromValue = CGPoint(x: layer.frame.origin.x, y: layer.frame.origin.y)
        animation.fromValue = CGPoint(x: 200, y: 200)
        animation.duration = 3
        animation.fillMode = .forwards
        layer.add(animation, forKey: nil)
    }
    
    func animateSecond(){
        let animation = CABasicAnimation(keyPath: "position")
        animation.fromValue = CGPoint(x: layer2.frame.origin.x-20, y: layer2.frame.origin.y-20)
        animation.duration = 3
        animation.fillMode = .both
        //animation.repeatCount = 2
        layer2.add(animation, forKey: nil)
    }
}
