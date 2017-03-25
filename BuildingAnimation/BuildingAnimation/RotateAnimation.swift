//
//  RotateAnimation.swift
//  EZAnimation
//
//  Created by 李修冶 on 2017/3/24.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit

//public func rotate(by angle: CGFloat , with duration : TimeInterval ) -> AnimatState {
//    return { view in
//        
//        view.animCount += 1
//        UIView.animate(withDuration: duration, delay: 0, options: [] , animations: {
//            view.transform = .init(rotationAngle: angle)
//        }, completion: { _ in
//            view.transform = .init(rotationAngle: angle)
//            view.animCount -= 1
//        })
//        
//        return view
//    }
//}

public func rotateZ(by angle : CGFloat , with duration : TimeInterval , options : UIViewAnimationOptions = []) -> AnimatState {
    return { view in
        view.animCount += 1
        UIView.animate(withDuration: duration, delay: 0, options: options, animations: {
//            view.transform = view.transform.rotated(by: angle)
            view.layer.transform = CATransform3DRotate(view.layer.transform, angle, 0, 0, 1)
        }, completion: { _ in
            view.animCount -= 1
        })
        return view
    }
}

public func rotateY(by angle : CGFloat , with duration : TimeInterval , options : UIViewAnimationOptions = [] ) -> AnimatState {
    return { view in
    
        view.animCount += 1
        
        UIView.animate(withDuration: duration, delay: 0, options: options, animations: {
//            var transform = CATransform3DIdentity
            view.layer.transform.m34 = -0.002
            view.layer.transform = CATransform3DRotate(view.layer.transform, angle, 0, 1, 0)
        }, completion: { _ in
            view.animCount -= 1
        })
        
        return view
    }
}

public func rotateX(by angle : CGFloat , with duration : TimeInterval , options : UIViewAnimationOptions = [] ) -> AnimatState {
    return { view in
        
        view.animCount += 1
        
        UIView.animate(withDuration: duration, delay: 0, options: options, animations: {
            view.layer.transform.m34 = -0.002
            view.layer.transform = CATransform3DRotate(view.layer.transform, angle, 1, 0, 0)
        }, completion: { _ in
            view.animCount -= 1
        })
        
        return view
    }
}


