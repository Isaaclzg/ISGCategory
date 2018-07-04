# ISGCategory

[![Version](https://img.shields.io/cocoapods/v/ISGCategory.svg?style=flat)](https://cocoapods.org/pods/ISGCategory) [![License](https://img.shields.io/cocoapods/l/ISGCategory.svg?style=flat)](https://cocoapods.org/pods/ISGCategory) [![Platform](https://img.shields.io/cocoapods/p/ISGCategory.svg?style=flat)](https://cocoapods.org/pods/ISGCategory)

[TOC]

## 安装


```ruby
pod 'ISGCategory', '~> 1.6'
```

## 介绍
#### MBProgressHUD+ISGProgress（HUD）

```
/**
成功标志的HUD
*/
+ (void)showSuccess:(NSString *)success toView:(UIView *)view;


/**
失败或者错误的HUD
*/
+ (void)showError:(NSString *)error toView:(UIView *)view;

/**
显示纯文本信息的HUD
*/
+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;

/**
显示带loading的HUD
*/
+ (MBProgressHUD *)showLoading:(NSString *)message toView:(UIView *)view;

/**
隐藏HUD并从父视图上移除
*/
+ (void)hideHUDForView:(UIView *)view;
```
#### NSString+ISGPinyin（返回开头字母）
```
/*
*获取汉字拼音的首字母, 返回的字母是大写形式, 例如: @"俺妹", 返回 @"A".
*如果字符串开头不是汉字, 而是字母, 则直接返回该字母, 例如: @"b彩票", 返回 @"B".
*如果字符串开头不是汉字和字母, 则直接返回 @"#", 例如: @"&哈哈", 返回 @"#".
*字符串开头有特殊字符(空格,换行)不影响判定, 例如@"       a啦啦啦", 返回 @"A".
*/
- (NSString *)getFirstLetter;
```
#### NSString+ISGRegular（字符串格式化判断）
```
/**
 检查手机号是否合法
 */
- (BOOL)checkTelePhoneNumber;

/**
 检查身份证是否合法
 */
- (BOOL)judgeIdentityStringValid;

/**
 判断银行卡号是否合法（Luhn算法）
 */
- (BOOL)checkBankCardNumber;

/**
 判断字符串是否为纯数字
 */
- (BOOL)isPureNumandCharacters;

/**
 判断字符串是都为空
 */
- (BOOL)isEmptyString;

```
#### UIColor+ISColor（设置颜色）
```
/**
 RGBA 设置颜色
 */
+ (UIColor *)colorWithFFRed:(CGFloat)red
                      green:(CGFloat)green
                       blue:(CGFloat)blue
                      alpha:(CGFloat)alpha;
                      
/**
 RGB设置颜色，默认透明度1
 */
+ (UIColor *)colorWithFFRed:(CGFloat)red
                      green:(CGFloat)green
                       blue:(CGFloat)blue;
                       
/**
 *  随机颜色
 */
+ (UIColor *)randomColor;

/**
 *  根据十六进制转换为颜色，默认alpha为1
 */
+ (UIColor *)colorWithHex:(UInt32)hex;

/**
 *  根据十六进制转换为颜色
 */
+ (UIColor *)colorWithHex:(UInt32)hex
                 andAlpha:(CGFloat)alpha;
                 
/**
 *  根据十六进制字符串转换为颜色
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString;

/**
 从十六进制字符串获取颜色
 */
+ (UIColor *)colorWithHexString:(NSString *)color
                          alpha:(CGFloat)alpha;
```
#### UIFont+ISGFontFit（字体适配）
`RunTime自动适配字体`
#### UIImage+ISGCompress（图片等比缩放）
```
/**
 use session compress Strategy
 */
- (UIImage *)sg_SessionCompress;

/**
 use timeline compress Strategy
 */
- (UIImage *)sg_TimelineCompress;
```
#### UIView+ISGTargetAction（UIView添加点击事件的block）
`- (void)addActionWithblock:(TouchCallBackBlock)block;`
#### UIView+ISGViewController（在view中获取持有view的Controller）
```
/**
 在view中获取view的Controller
 */
- (UIViewController *)viewController;
```
#### UITableView+ISGCellLine（设置TableView分割线满行）
```
/**
 *  设置tableView的cell满屏
 */
- (void)setTableFullLine;

ps：下面需要设置TableView的Delegate方法
#pragma mark - cell分割线填满
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}
```
#### NSBundle+ISGPodBundle（CocoaPods是获取资源目录）
```
/**
 获取文件所在name，默认情况下podName和bundlename相同，传一个即可
 */
+ (NSBundle *)bundleWithBundleName:(NSString *)bundleName
                           podName:(NSString *)podName;
```
## 作者

Isaaclzg, isaac_gang@163.com
[简书:M刘](https://www.jianshu.com/u/7e1b920cdac1)

## License

ISGCategory is available under the MIT license. See the LICENSE file for more info.




