//
//  ViewController.swift
//  CoreImageFuncational
//
//  Created by 李修冶 on 2017/3/17.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit
import BuildingAnimation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var animatView: UIView!

    @IBOutlet weak var btn: UIButton!
    
    @IBOutlet weak var img1: UIImageView!//39,410
    
    @IBOutlet weak var img2: UIImageView!//81,379
    
    @IBOutlet weak var img3: UIImageView!//138,359
    
    @IBOutlet weak var img4: UIImageView!//199,379
    
    @IBOutlet weak var img5: UIImageView!//249,410
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img1.excuteAnimate(scale(by: 0.5, with: 0))
        img2.excuteAnimate(scale(by: 0.5, with: 0))
        img3.excuteAnimate(scale(by: 0.5, with: 0))
        img4.excuteAnimate(scale(by: 0.5, with: 0))
        img5.excuteAnimate(scale(by: 0.5, with: 0))
        img1.excuteAnimate(rotateZ(by: CGFloat(Double.pi), with: 0))
        img2.excuteAnimate(rotateZ(by: CGFloat(Double.pi), with: 0))
        img3.excuteAnimate(rotateZ(by: CGFloat(Double.pi), with: 0))
        img4.excuteAnimate(rotateZ(by: CGFloat(Double.pi), with: 0))
        img5.excuteAnimate(rotateZ(by: CGFloat(Double.pi), with: 0))
    
    }
    
    

    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    @IBAction func animateAction(_ sender: Any) {
        
        
        
        btn.excuteAnimate(
            rotateZ(by: CGFloat(Double.pi/4), with: 0.3)
        )
        
        let commonPull = rotateZ(by: CGFloat(Double.pi), with: 0.2)
                        => fade(0, with: 0.8) + scale(by: 0.5, with: 0.5)
                        + move(to: CGPoint(x: 140, y: 466), with: 0.3)
        
        let commonPush =  rotateZ(by: CGFloat(Double.pi), with: 1)
                        + fade(1, with: 0.5)
        
        btn.isSelected = !btn.isSelected
        
        if btn.isSelected {
            img1.excuteAnimate(
                        scale(by: 2, with: 0)
                    =>  commonPush + move(to: CGPoint(x: 39, y: 410), with: 0.3)
            )
            
            img2.excuteAnimate(
                       scale(by: 2, with: 0)
                    => commonPush + move(to: CGPoint(x: 81, y: 379), with: 0.3)
            )
            
            img3.excuteAnimate(
                       scale(by: 2, with: 0)
                    => commonPush + move(to: CGPoint(x: 138, y: 359), with: 0.3)
            )
            
            img4.excuteAnimate(
                       scale(by: 2, with: 0)
                    => commonPush + move(to: CGPoint(x: 199, y: 379), with: 0.3)
            )
            
            img5.excuteAnimate(
                       scale(by: 2, with: 0)
                    => commonPush + move(to: CGPoint(x: 249, y: 410), with: 0.3)
            )
        }else{
            img1.excuteAnimate( commonPull )
            img2.excuteAnimate( commonPull )
            img3.excuteAnimate( commonPull )
            img4.excuteAnimate( commonPull )
            img5.excuteAnimate( commonPull )
        }
        
        

        
    }
    
    @IBAction func squareAction(sender: Any) {
            animatView.excuteAnimate(
                
                   fade(0.5 , with : 0.5)//在0.5秒内，半透明
                => doOther(0){ print("开始移动") }//空动画，不执行任何动画，但是可以在上一个动画结束后回调
                => move(to: .zero, with: 1)//1秒内移动到原点
                => fade(1, with: 0.5) + moveX(to: 100, with: 0.5) //0.5秒内移动的同时，又变成不透明的状态
                => move(to: .init(x: 100, y: 100), with: 1)//1秒内移动到100，100
                => doOther(0){ print("移动结束") }//空动画，在一个动画结束后回调
            )
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
