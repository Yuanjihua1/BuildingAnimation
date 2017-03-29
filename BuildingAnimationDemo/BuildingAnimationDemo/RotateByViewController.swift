//
//  RotateByViewController.swift
//  FunctionalAnimate
//
//  Created by 李修冶 on 2017/3/24.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit
import BuildingAnimation

class RotateByViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnAction(sender: UIButton) {
        
        
        
        sender.excuteAnimate(
                rotateY(by: CGFloat(Double.pi), with: 0.5)
            =>  rotateY(by: CGFloat(Double.pi), with: 0.5)
            =>  rotateX(by: CGFloat(Double.pi), with: 1)
            =>  rotateZ(by: CGFloat(Double.pi/4), with: 1)
            
        )
    }
    
}
