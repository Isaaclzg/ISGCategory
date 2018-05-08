//
//  UIImage+Wechat.h
//
//  Created by tiger on 2017/2/21.
//  Copyright © 2017年 xinma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ISGCompress)

/**
 use session compress Strategy
 */
- (UIImage *)sg_SessionCompress;

/**
 use timeline compress Strategy
 */
- (UIImage *)sg_TimelineCompress;

@end
