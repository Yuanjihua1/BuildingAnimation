//
//  TranslateByViewController.swift
//  FunctionalAnimate
//
//  Created by 李修冶 on 2017/3/24.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit
import BuildingAnimation

class TranslateByViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnAction(sender: UIButton) {
        
        sender.excuteAnimate(
            translateX(by: 100, with: 1)
        )
        
    }
}
