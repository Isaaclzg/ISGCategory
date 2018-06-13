//
//  UIView+ISGTargetAction.h
//  ISGCategory
//
//  Created by Isaac on 2018/6/13.
//

#import <UIKit/UIKit.h>

typedef void(^TouchCallBackBlock)(void);

@interface UIView (ISGTargetAction)

@property (nonatomic, copy) TouchCallBackBlock touchCallBackBlock;

- (void)addActionWithblock:(TouchCallBackBlock)block;

- (void)addTarget:(id)target action:(SEL)action;


@end
