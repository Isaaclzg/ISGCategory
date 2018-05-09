//
//  UIView+ViewController.m
//  ISGCategory
//  简书：https://www.jianshu.com/u/7e1b920cdac1
//
//  Created by isaac on 14-4-12.
//  Copyright (c) 2014年 Isaac  All rights reserved.
//

#import "UIView+ISGViewController.h"

@implementation UIView (ISGViewController)

- (UIViewController *)viewController
{
    // 下一个响应者
    id next = [self nextResponder];
    
    while (next) {
        
        next = [next nextResponder];
        
        // 当下一个响应者派生自ViewController
        if ([next isKindOfClass:[UIViewController class]]) {
            return next;
        }
        
    }
    
    return nil;
}

@end
