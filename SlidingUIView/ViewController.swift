//
//  ViewController.swift
//  SlidingUIView
//
//  Created by Seimith on 10/1/16.
//  Copyright © 2016 Seimith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiViewToSlide: UIView!
    
    
    @IBAction func slideUIView () {
        self.beginAnimation()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.beginAnimation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func beginAnimation() {
        self.uiViewToSlide.transform = CGAffineTransformMakeTranslation(0, -100)
        
        UIView.animateWithDuration(0.4, delay: 0, options: [.CurveEaseInOut], animations: {
            self.uiViewToSlide.transform = CGAffineTransformMakeTranslation(0, 50)
            }, completion: { completion in
                UIView.animateWithDuration(0.2, delay: 0.0, options: [.CurveEaseInOut], animations: {
                    self.uiViewToSlide.transform = CGAffineTransformMakeTranslation(0, 0)
                }, completion: nil)
        })
        
    }
}

