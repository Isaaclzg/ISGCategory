//
//  UIView+ViewController.h
//  ISGCategory
//  简书：https://www.jianshu.com/u/7e1b920cdac1
//
//  Created by isaac on 14-4-12.
//  Copyright (c) 2014年 Isaac All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIView (ISGViewController)


/**
 在view中获取view的Controller

 @return 持有当前View的Controller
 */
- (UIViewController *)viewController;

@end
