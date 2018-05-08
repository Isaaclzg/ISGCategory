//
//  UITableView+ISCellLine.m
//  ISToolsDemo
//
//  Created by isaac on 15/12/21.
//  Copyright © 2015年 isaac. All rights reserved.
//

#import "UITableView+ISGCellLine.h"

@implementation UITableView (ISGCellLine)

- (void)setTableFullLine
{
    if ([self respondsToSelector:@selector(setSeparatorInset:)]) {
        [self setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([self respondsToSelector:@selector(setLayoutMargins:)]) {
        [self setLayoutMargins:UIEdgeInsetsZero];
    }
}



@end
