//
//  ViewController.swift
//  Animations_Kiet_13110085
//
//  Created by Cntt01 on 4/12/17.
//  Copyright © 2017 Group9_UTE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1Contraint: NSLayoutConstraint!
    @IBOutlet weak var button2Contraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button1Contraint.constant -= view.bounds.width
        button2Contraint.constant -= view.bounds.width
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var animationPerformedOnce = false
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if !animationPerformedOnce {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.button1Contraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            
            UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseOut, animations: {
                self.button2Contraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            
            animationPerformedOnce = true
        }
    }

}

