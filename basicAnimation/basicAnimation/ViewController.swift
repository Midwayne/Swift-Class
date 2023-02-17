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
    
    let redView = UIView()
    @IBOutlet weak var animate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        layer.backgroundColor = UIColor.systemCyan.cgColor
        layer.frame = CGRect(x: 100, y: 200, width: 200, height: 200)
        layer.cornerRadius = 40.0
        view.layer.addSublayer(layer)
        
        layer2.backgroundColor = UIColor.systemTeal.cgColor
        layer2.frame = CGRect(x: 200, y: 200, width: 100, height: 200)
        view.layer.addSublayer(layer2)
        
        redView.backgroundColor = .systemRed
        let width: CGFloat = 140
        let height: CGFloat = 100
        redView.frame = CGRect(x: view.bounds.midX - width/2,
                               y: view.bounds.midY - height/2,
                               width: width, height: height)
        //func buttonTapped(_ sender: UIButton) {
            DispatchQueue.main.asyncAfter(deadline: .now()+1){
              
                self.animateMovement()
                self.animateSecond()
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                self.animateTrans()
            }
        //}
        
    }
    /*
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }*/
    func animateTrans() {
        
        let animation = CABasicAnimation()
        animation.keyPath = "transform.scale"
        animation.fromValue = 1
        animation.toValue = 2
        animation.duration = 2.0
        
        redView.layer.add(animation, forKey: "basic")
        redView.layer.transform = CATransform3DMakeScale(2, 2, 1)

    }
    func animateMovement()
    {
        let animation = CABasicAnimation(keyPath: "position")
        
        //animation.fromValue = CGPoint(x: layer.frame.origin.x, y: layer.frame.origin.y)
        animation.fromValue = CGPoint(x: 200, y: 200)
        animation.duration = 3
        animation.fillMode = .forwards
        animation.repeatCount = 2
        layer.add(animation, forKey: nil)
    }
    
    func animateSecond(){
        let animation = CABasicAnimation(keyPath: "position")
        animation.fromValue = CGPoint(x: layer2.frame.origin.x-20, y: layer2.frame.origin.y-20)
        animation.duration = 3
        animation.fillMode = .both
        animation.repeatCount = 2
        layer2.add(animation, forKey: nil)
        
        let animationColor = CABasicAnimation(keyPath: "backgroundColor")
        animationColor.fromValue = UIColor.black.cgColor
        animationColor.toValue = UIColor.systemTeal.cgColor
        animationColor.repeatCount = 20000
        layer2.add(animationColor, forKey: nil)
    }
}
