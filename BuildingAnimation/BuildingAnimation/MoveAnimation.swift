//
//  MoveAnimation.swift
//  EZAnimation
//
//  Created by 李修冶 on 2017/3/24.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit

public func move(to point: CGPoint , with duration : TimeInterval , options: UIViewAnimationOptions = []) -> AnimatState {
    return { view in
        
        view.animCount += 1
        
        UIView.animate(withDuration: duration, delay: 0, options: options , animations: {
            view.frame.origin = point
        }, completion: { _ in
            view.frame.origin = point
            view.animCount -= 1
        })
        
        return view
    }
}

public func moveX(to x : CGFloat , with duration : TimeInterval , options: UIViewAnimationOptions = []) -> AnimatState {
    return {view in
        return move(to: .init(x: x, y: view.frame.origin.y), with: duration , options: options)(view)
    }
}

public func moveY(to y : CGFloat , with duration : TimeInterval , options: UIViewAnimationOptions = []) -> AnimatState {
    return {view in
        return move(to: .init(x: view.frame.origin.x, y: y), with: duration, options: options)(view)
    }
}

public func move(by point: CGPoint , with duration : TimeInterval , options: UIViewAnimationOptions = []) -> AnimatState {
    return {view in
        let toPoint = CGPoint.init(x: view.frame.origin.x + point.x, y: view.frame.origin.y + point.y)
        return move(to: toPoint, with: duration, options: options)(view )
    }
}

public func moveX(by x: CGFloat , with duration : TimeInterval , options: UIViewAnimationOptions = []) -> AnimatState {
    return { view in
        let toPoint = CGPoint.init(x: view.frame.origin
            .x + x, y: view.frame.origin.y)
        return move(to: toPoint, with: duration, options: options)(view)
    }
}

public func moveY(by y: CGFloat , with duration : TimeInterval , options: UIViewAnimationOptions = []) -> AnimatState {
    return { view in
        let toPoint = CGPoint.init(x: view.frame.origin
            .x, y: view.frame.origin.y + y)
        return move(to: toPoint, with: duration, options: options)(view)
    }
}

