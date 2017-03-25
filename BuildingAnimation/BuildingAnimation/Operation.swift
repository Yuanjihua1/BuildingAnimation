//
//  Operation.swift
//  CoreImageFuncational
//
//  Created by 李修冶 on 2017/3/21.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit

precedencegroup Pointo {
    associativity: right
    lowerThan : AdditionPrecedence
}

infix operator => : Pointo


public func => (left : @escaping AnimatState , right :@escaping AnimatState) -> AnimatState {
    return { view in
        
        view.animCompleteHandles.append( { [weak view] in
            guard view != nil else { return }
            _ = right(view!)
        })
        
        return left(view)
    }
}

public func + (left : @escaping  AnimatState , right : @escaping AnimatState) -> AnimatState {
    return { view in
        return right(left(view))
    }
}
