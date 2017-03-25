//
//  MoveByViewController.swift
//  FunctionalAnimate
//
//  Created by 李修冶 on 2017/3/24.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit
import BuildingAnimation

class MoveByViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btnAction(_ sender: UIButton) {
        
        sender.excuteAnimate(
                move(by: .init(x: 64, y: 64), with: 0.5)
            =>  moveX(by: 100, with: 0.5)
            =>  moveY(by: 100, with: 0.5) + fade(0.5, with: 0.5)
        )
        
    }
    
}
