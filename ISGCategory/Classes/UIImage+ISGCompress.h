//
//  ISGCategory
//  简书：https://www.jianshu.com/u/7e1b920cdac1
//
//  Created by isaac on 2017/2/21.
//  Copyright © 2017年 isaac. All rights reserved.
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
