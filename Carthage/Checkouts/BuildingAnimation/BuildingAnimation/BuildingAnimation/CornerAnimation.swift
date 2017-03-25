//
//  CornerAnimation.swift
//  BuildingAnimation
//
//  Created by 李修冶 on 2017/3/25.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit

public func corner(to radius : CGFloat , with duration : TimeInterval ,timingFunction : CAMediaTimingFunction? = nil ) -> AnimatState {
    return {view in
        
        view.animCount += 1
        
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        animation.timingFunction = timingFunction
        animation.fromValue = view.layer.cornerRadius
        animation.toValue = radius
        animation.duration = duration
        view.layer.add(animation, forKey: "corner")
        view.layer.cornerRadius = radius
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() +  duration, execute: {
            view.animCount -= 1
        })
        
        return view
    }
}

public func corner(widthPercent : CGFloat , with duration : TimeInterval ,timingFunction : CAMediaTimingFunction? = nil ) -> AnimatState{
    return {view in
        return corner(to: view.frame.width * widthPercent, with: duration , timingFunction : timingFunction)(view)
    }
}

public func corner(heightPercent : CGFloat , with duration : TimeInterval ,timingFunction : CAMediaTimingFunction? = nil ) -> AnimatState{
    return {view in
        return corner(to: view.frame.height * heightPercent, with: duration , timingFunction : timingFunction)(view)
    }
}



