# ISGCategory

[![CI Status](https://img.shields.io/travis/Isaaclzg/ISGCategory.svg?style=flat)](https://travis-ci.org/Isaaclzg/ISGCategory)
[![Version](https://img.shields.io/cocoapods/v/ISGCategory.svg?style=flat)](https://cocoapods.org/pods/ISGCategory)
[![License](https://img.shields.io/cocoapods/l/ISGCategory.svg?style=flat)](https://cocoapods.org/pods/ISGCategory)
[![Platform](https://img.shields.io/cocoapods/p/ISGCategory.svg?style=flat)](https://cocoapods.org/pods/ISGCategory)

```
[TOC]
```

## 安装


```ruby
pod 'ISGCategory', '~> 1.6'
```

## 介绍
#### MBProgressHUD+ISGProgress

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
#### NSString+ISGPinyin
```
/*
*获取汉字拼音的首字母, 返回的字母是大写形式, 例如: @"俺妹", 返回 @"A".
*如果字符串开头不是汉字, 而是字母, 则直接返回该字母, 例如: @"b彩票", 返回 @"B".
*如果字符串开头不是汉字和字母, 则直接返回 @"#", 例如: @"&哈哈", 返回 @"#".
*字符串开头有特殊字符(空格,换行)不影响判定, 例如@"       a啦啦啦", 返回 @"A".
*/
- (NSString *)getFirstLetter;
```



## 作者

Isaaclzg, isaac_gang@163.com
[简书:M刘](https://www.jianshu.com/u/7e1b920cdac1)

## License

ISGCategory is available under the MIT license. See the LICENSE file for more info.
