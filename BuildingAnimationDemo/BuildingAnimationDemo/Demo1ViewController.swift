//
//  Dmeo1ViewController.swift
//  BuildingAnimationDemo
//
//  Created by 李修冶 on 2017/3/26.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit
import BuildingAnimation

let ScreenWidth = UIScreen.main.bounds.size.width

class Demo1ViewController: UIViewController {

    @IBOutlet var btn : [UIButton]!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        for item in btn {
//            item.backgroundColor = .white
            item.frame.origin.x = ScreenWidth
            item.alpha = 0
        }
        
    }

    @IBAction func startAction(_ sender: UIButton) {
        
        let anim = moveX(by: -50, with: 0.3 , options : .curveEaseOut) + fade(1, with: 1 , options : .curveEaseOut)
        
        for (index , item) in btn.enumerated() {
            item.excuteAnimate(
                    doOther(0.1 * Double(index), closure: nil)
                =>  anim
            )
        }
    }
}
