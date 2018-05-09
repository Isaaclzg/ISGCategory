//
//  MBProgressHUD+ISProgress.h
//  ISGCategory
//  简书：https://www.jianshu.com/u/7e1b920cdac1
//
//  Created by isaac on 15/12/21.
//  Copyright © 2015年 isaac. All rights reserved.
//

// 图片路径
// 手动Copy
#define ISGPhotoSource(file) [@"ISGCategory.bundle" stringByAppendingPathComponent:file]

// CocoaPods导入
#define ISGPhotoSourceForPod(file) [@"Frameworks/ISGCategory.framework/ISGCategory.bundle" stringByAppendingPathComponent:file]

// 设置UIImage通过imageNamed
#define ISGImgWithName(file) [UIImage imageNamed:ISGPhotoSource(file)]?:[UIImage imageNamed:ISGPhotoSourceForPod(file)];

#import "MBProgressHUD.h"

@interface MBProgressHUD (ISGProgress)

/**
 成功标志的HUD

 @param success 显示的文字
 @param view 加载view上
 */
+ (void)showSuccess:(NSString *)success
             toView:(UIView *)view;

/**
 失败或者错误的HUD

 @param error 显示的文字
 @param view 加载view上
 */
+ (void)showError:(NSString *)error
           toView:(UIView *)view;

/**
 显示纯文本信息的HUD

 @param message 显示的文字
 @param view 加载view上
 @return MBProgressHUD
 */
+ (MBProgressHUD *)showMessage:(NSString *)message
                        toView:(UIView *)view;

/**
 显示带loading的HUD

 @param message 显示的文字
 @param view 加载view上
 @return MBProgressHUD
 */
+ (MBProgressHUD *)showLoading:(NSString *)message toView:(UIView *)view;


/**
 隐藏HUD并从父视图上移除

 @param view 父视图
 */
+ (void)hideHUDForView:(UIView *)view;


@end
