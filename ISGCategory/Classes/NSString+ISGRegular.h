//
//  NSString+ISGRegular.h
//  ISGCategory
//
//  Created by Isaac on 2018/7/3.
//

#import <Foundation/Foundation.h>

@interface NSString (ISGRegular)

/**
 检查手机号是否合法

 @return 手机号是否合法
 */
- (BOOL)checkTelePhoneNumber;

/**
 检查身份证是否合法

 @return 身份证是否合法
 */
- (BOOL)judgeIdentityStringValid;

/**
 判断银行卡号是否合法（Luhn算法）

 @return 判断银行卡号是否合法
 */
- (BOOL)checkBankCardNumber;

/**
 判断字符串是否为纯数字

 @return 字符串是否为纯数字
 */
- (BOOL)isPureNumandCharacters;

/**
 判断字符串是都为空

 @return 为空返回YES
 */
- (BOOL)isEmptyString;
@end
