//
//  UIFont+ISGFontFit.m
//  ISGCategory
//
//  Created by Isaac on 2018/6/5.
//

#import "UIFont+ISGFontFit.h"
#import <objc/runtime.h>

#define ISGUISrceen 375
@implementation UIFont (ISGFontFit)

+ (void)load {
    // 获取替换后的类方法
    Method newMethod = class_getClassMethod([self class], @selector(adjustFont:));
    // 获取替换前的类方法
    Method method = class_getClassMethod([self class], @selector(systemFontOfSize:));
    // 然后交换类方法，交换两个方法的IMP指针，(IMP代表了方法的具体的实现）
    method_exchangeImplementations(newMethod, method);
}

+ (UIFont *)adjustFont:(CGFloat)fontSize {
    UIFont *newFont = nil;
    newFont = [UIFont adjustFont:fontSize * [UIScreen mainScreen].bounds.size.width/ISGUISrceen];
    return newFont;
}

@end
