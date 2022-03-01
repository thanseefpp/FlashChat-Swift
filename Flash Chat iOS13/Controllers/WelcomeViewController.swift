//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel
import Lottie

class WelcomeViewController: UIViewController {

    @IBOutlet var animationView: AnimationView!
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "FlashChat"
        
        loadAnimation()
        
        // for manual animation using for loop without using CLTypingLabel.
//        titleLabel.text = ""
//        let letterToAnimate = "FlashChat"
//        var changeIndexNo = 0.0
//        for letter in letterToAnimate {
//            Timer.scheduledTimer(withTimeInterval: 0.1 * changeIndexNo, repeats: false) { (timer) in
//                self.titleLabel.text?.append(letter)
//            }
//            changeIndexNo += 1
//        }
    }
    
    private func loadAnimation() {
        animationView = AnimationView(name: "chatting")
        animationView.frame = CGRect(x: 100, y: 0, width: 400, height: 200)
        animationView.center = view.center
        animationView.backgroundColor = .white
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
    }
    

}
