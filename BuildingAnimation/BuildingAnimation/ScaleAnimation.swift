//
//  ScaleAnimation.swift
//  EZAnimation
//
//  Created by 李修冶 on 2017/3/24.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit

public func scale(to scale: CGFloat , with duration : TimeInterval ,options : UIViewAnimationOptions = []) -> AnimatState {
    return { view in
        
        view.animCount += 1
        
        UIView.animate(withDuration: duration, delay: 0, options: options , animations: {
            view.transform = CGAffineTransform.init(scaleX: scale, y: scale)
        }, completion: { _ in
            view.transform = CGAffineTransform.init(scaleX: scale, y: scale)
            view.animCount -= 1
        })
        
        return view
    }
}

public func scale(by scale : CGFloat , with duration : TimeInterval , options : UIViewAnimationOptions = []) -> AnimatState {
    return { view in
     
        view.animCount += 1
        
        UIView.animate(withDuration: duration, delay: 0, options: options, animations: {
            view.transform = view.transform.scaledBy(x: scale, y: scale)
        }, completion: { _ in
//            view.transform = view.transform.scaledBy(x: scale, y: scale)
            view.animCount -= 1
        })
        return view
    }
}

public func scaleX(by x: CGFloat , with duration : TimeInterval , options : UIViewAnimationOptions = []) -> AnimatState {
    return { view in
        view.animCount += 1
        UIView.animate(withDuration: duration, delay: 0, options: options , animations: {
            view.transform = view.transform.scaledBy(x: x, y: 1)
        }, completion: { _ in
//            view.transform = view.transform.scaledBy(x: x, y: 0)
            view.animCount -= 1
        })
        return view
    }
}

public func scaleY(by y: CGFloat , with duration : TimeInterval , options : UIViewAnimationOptions = [] ) -> AnimatState {
    return { view in
        view.animCount += 1
        UIView.animate(withDuration: duration, delay: 0, options: options , animations: {
            view.transform = view.transform.scaledBy(x: 1, y: y)
        }, completion: { _ in
//            view.transform = view.transform.scaledBy(x: 0, y: y)
            view.animCount -= 1
        })
        return view
    }
}
