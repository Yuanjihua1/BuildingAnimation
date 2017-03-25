//
//  DoOtherAnimation.swift
//  EZAnimation
//
//  Created by 李修冶 on 2017/3/24.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit

public func doOther(_ duration : TimeInterval , closure : (()->Void)?) -> AnimatState{
    return { view in
        
        view.animCount += 1
        closure?()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + duration, execute: {
            view.animCount -= 1
        })
        
        return view
    }
}
