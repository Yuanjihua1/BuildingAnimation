//
//  BackgroundColor.swift
//  BuildingAnimation
//
//  Created by 李修冶 on 2017/3/25.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit

public func backgroundColor(to color : UIColor , with duration : TimeInterval , options : UIViewAnimationOptions = []) -> AnimatState {
    return {view in
        
        view.animCount += 1
        
        UIView.animate(withDuration: duration, delay: 0, options: options, animations: { 
            
            view.backgroundColor = color
            
        }, completion: { _ in
            view.animCount -= 1
        })
        
        return view
    }
}
