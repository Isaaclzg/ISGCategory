//
//  MBProgressHUD+ISProgress.m
//  ISGCategory
//  简书：https://www.jianshu.com/u/7e1b920cdac1
//
//  Created by isaac on 15/12/21.
//  Copyright © 2015年 isaac. All rights reserved.
//

#import "MBProgressHUD+ISGProgress.h"
#import "NSBundle+ISGPodBundle.h"

@implementation MBProgressHUD (ISGProgress)

+ (void)show:(NSString *)text icon:(NSString *)icon view:(UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];

    hud.label.text = text;
    // 设置图片
    
    NSBundle *bundle = [NSBundle bundleWithBundleName:nil podName:@"ISGCategory"];
    NSString *path = [[bundle resourcePath] stringByAppendingPathComponent:icon];
    UIImage *img = [UIImage imageWithContentsOfFile:path];
    hud.customView = [[UIImageView alloc] initWithImage:img];
    // 再设置模式
    hud.mode = MBProgressHUDModeCustomView;
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // 1秒之后再消失
    [hud hideAnimated:YES afterDelay:1];

}

#pragma mark 显示错误信息
+ (void)showError:(NSString *)error toView:(UIView *)view{
    [self show:error icon:@"ISGProgress_error.png" view:view];
}

+ (void)showSuccess:(NSString *)success toView:(UIView *)view
{
    [self show:success icon:@"ISGProgress_success" view:view];
}

#pragma mark 显示一些信息

+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view {
    MBProgressHUD *hud = [MBProgressHUD showLoading:message toView:view];
    hud.mode = MBProgressHUDModeText;
    // 1秒之后再消失
    [hud hideAnimated:YES afterDelay:1];
    return hud;
}

+ (MBProgressHUD *)showLoading:(NSString *)message toView:(UIView *)view {
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = message;
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    // YES代表需要蒙版效果
//    hud.dimBackground = NO;
    return hud;
}

+ (void)hideHUDForView:(UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    [self hideHUDForView:view animated:YES];
}

+ (void)hideHUD
{
    [self hideHUDForView:nil];
}

@end
