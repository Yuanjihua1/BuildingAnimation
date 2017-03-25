//
//  FadeAnimation.swift
//  EZAnimation
//
//  Created by 李修冶 on 2017/3/24.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit

public func fade(_ alpha: CGFloat , with duration : TimeInterval , options : UIViewAnimationOptions = []) -> AnimatState{
    return { view in
        
        view.animCount += 1
        
        UIView.animate(withDuration: duration, delay: 0, options: options , animations: {
            view.alpha = alpha
        }, completion: { _ in
            view.alpha = alpha
            view.animCount -= 1
        })
        
        return view
    }
}
