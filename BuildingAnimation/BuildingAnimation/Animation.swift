//
//  Animation.swift
//  CoreImageFuncational
//
//  Created by 李修冶 on 2017/3/17.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit

public typealias AnimComleteHandle = () -> Void

public typealias AnimatState = (UIView) -> UIView

fileprivate var anim_count_key : Void!
fileprivate var anim_comptele_handle_key : Void!
public extension UIView {
    
    internal var animCount : Int {
        set{
            
            if newValue < 0 {
                objc_setAssociatedObject(self, &anim_count_key, 0, .OBJC_ASSOCIATION_COPY_NONATOMIC)
                return 
            }
            
            objc_setAssociatedObject(self, &anim_count_key, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC)
            
            if newValue == 0 {
                animCompleteHandles.popLast()?()
            }
            
        }
        get{
            return ( objc_getAssociatedObject(self, &anim_count_key) as? Int ) ?? 0
        }
    }
    
    internal var animCompleteHandles : [AnimComleteHandle] {
        set{
            objc_setAssociatedObject(self, &anim_comptele_handle_key, ( newValue as Any ), .OBJC_ASSOCIATION_COPY_NONATOMIC)
        }
        get{
            return (objc_getAssociatedObject(self, &anim_comptele_handle_key) as? [AnimComleteHandle]) ?? [AnimComleteHandle]()
        }
    }
    
}

public extension UIView {
    func excuteAnimate(_ animate : AnimatState){
        _ = animate(self)
    }
}

