//
//  ViewController.swift
//  basicAnimation
//
//  Created by APPLE on 02/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    let layer = CALayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        layer.backgroundColor = UIColor.systemRed.cgColor
        layer.frame = CGRect(x: 100, y: 100, width: 120, height: 120)
        view.layer.addSublayer(layer)
        
        DispatchQueue.main.asyncAfter(deadline: .now()+3){
            self.animateMovement()
        }
        
    }
        
    func animateMovement()
    {
        let animation = CABasicAnimation(keyPath: "position")
        animation.fromValue = CGPoint(x: layer.frame.origin.x, y: layer.frame.origin.y)
        animation.duration = 3
        animation.fillMode = .forwards
        layer.add(animation, forKey: nil)
    }
    
}
