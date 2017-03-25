//
//  BackColorViewController.swift
//  BuildingAnimationDemo
//
//  Created by 李修冶 on 2017/3/25.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit
import BuildingAnimation

class BackColorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAction(_ sender: UIButton) {
        
        sender.excuteAnimate(
                backgroundColor(to: .red, with: 0.5)
            =>  backgroundColor(to: .green, with: 0.5)
            
        )
        
    }
}
