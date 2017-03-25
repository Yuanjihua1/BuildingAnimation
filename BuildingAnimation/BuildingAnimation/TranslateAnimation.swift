//
//  translatedBy.swift
//  EZAnimation
//
//  Created by 李修冶 on 2017/3/24.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit

public func translateX(by x : CGFloat , with duration : TimeInterval , options : UIViewAnimationOptions = []) -> AnimatState {
    return { view in
    
        view.animCount += 1
        
        UIView.animate(withDuration: duration, delay: 0, options: options, animations: { 
            view.transform = view.transform.translatedBy(x: x, y: 0)
        }, completion: { _ in
            
            view.animCount -= 1
        })
        
        return view
    }
}

public func translateY(by y : CGFloat , with duration : TimeInterval , options : UIViewAnimationOptions = []) -> AnimatState {
    return { view in
        
        view.animCount += 1
        
        UIView.animate(withDuration: duration, delay: 0, options: options, animations: {
            view.transform = view.transform.translatedBy(x: 1, y: y)
        }, completion: { _ in
            
            view.animCount -= 1
        })
        
        return view
    }
}
