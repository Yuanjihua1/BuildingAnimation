//
//  CornerViewController.swift
//  BuildingAnimationDemo
//
//  Created by 李修冶 on 2017/3/25.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit
import BuildingAnimation

class CornerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnAction(_ sender: UIButton) {
        
        sender.excuteAnimate(
                corner(to: 20, with: 1)
            =>  moveX(by: 20, with: 1)
            =>  corner(widthPercent: 0.5, with: 1)
        )
        
    }
}
