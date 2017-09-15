//
//  AnimationsViewController.swift
//  Swift project
//
//  Created by Ludovic Ollagnier on 14/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

import UIKit

class AnimationsViewController: UIViewController {

    @IBOutlet weak var animView1: UIView!
    @IBOutlet weak var viewHeighCosntarint: NSLayoutConstraint!
    @IBOutlet weak var viewTopConstraint: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doAnim1(_ sender: Any) {

        animView1.alert()
    }

    @IBAction func constraintAnim(_ sender: Any) {

        self.viewTopConstraint.constant = 50
        self.viewHeighCosntarint.constant = 300

        UIView.animate(withDuration: 2) {
            self.view.layoutIfNeeded()
        }
    }

    @IBAction func withKeyFrames(_ sender: Any) {

        UIView.animateKeyframes(withDuration: 2, delay: 0, options: [.repeat], animations: {

            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25, animations: {
                self.animView1.backgroundColor = .yellow
            })

            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25, animations: {
                self.animView1.backgroundColor = .red
            })

            UIView.addKeyframe(withRelativeStartTime: 0.50, relativeDuration: 0.25, animations: {
                self.animView1.backgroundColor = .green
            })

            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25, animations: {
                self.animView1.backgroundColor = .white
            })

        }, completion: nil)
    }
}

extension UIView {

    func alert() {
        UIView.animate(withDuration: 0.5, delay: 0, options: [.autoreverse, .repeat], animations: {
            self.backgroundColor = UIColor.red
            self.transform = CGAffineTransform(translationX: 20, y: 0)
        }) { (success) in
            print(success)
        }
    }
}
