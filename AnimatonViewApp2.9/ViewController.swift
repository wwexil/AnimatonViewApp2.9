//
//  ViewController.swift
//  AnimatonViewApp2.9
//
//  Created by Алекс Мерсер on 07.02.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationDescriptionLabel: UILabel!
    
    var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationDescriptionLabel.text = animation.description
    }

    
    @IBAction func runButtonPressed(_ sender: SpringButton) {
        animationDescriptionLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
    
}

