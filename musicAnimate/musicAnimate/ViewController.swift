//
//  ViewController.swift
//  musicAnimate
//
//  Created by APPLE on 17/02/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var reverseButton: UIButton!
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    
    var isPlaying: Bool = true {
        didSet {
            playPauseButton.isSelected = isPlaying
        }
    }
    @IBAction func playPauseButtonTapped() {
        isPlaying.toggle()
        
        if isPlaying {
            UIView.animate(withDuration: 0.0, delay: 0, usingSpringWithDamping: 0.0, initialSpringVelocity: 0.1, options: [], animations: {
                self.albumImageView.transform = CGAffineTransform.identity
            }, completion: nil)
        }
        
        else {
            UIView.animate(withDuration: 0.5) {
                self.albumImageView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            }
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    
}

 
