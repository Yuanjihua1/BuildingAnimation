//
//  ScaleByViewController.swift
//  FunctionalAnimate
//
//  Created by 李修冶 on 2017/3/24.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit
import BuildingAnimation

class ScaleByViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnAction(sender: UIButton) {
        
        sender.excuteAnimate(
                scale(by: 2, with: 1, options: .curveEaseIn)
            =>  scaleX(by: 0.5, with: 1)
            =>  scaleY(by: 0.5, with: 1)
        )
        
    }

}
