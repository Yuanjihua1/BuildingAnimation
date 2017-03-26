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
        
        
        sender.isEnabled = false
        
        sender.isSelected = !sender.isSelected
        
        let x : CGFloat = sender.isSelected ? -50 : 50
        let alpha : CGFloat = sender.isSelected ? 1 : 0
        
        let anim = moveX(by: x, with: 0.3 , options : .curveEaseOut)
                + fade(alpha, with: 1 , options : .curveEaseOut)
        
        
        
        for (index , item) in btn.enumerated() {
            item.excuteAnimate(
                    doOther(0.1 * Double(index), closure: nil)
                =>  anim
                =>  doOther(0, closure: { [weak sender] in
                        sender?.isEnabled = true
                    })
            )
        }
        
        
        
    }
}
