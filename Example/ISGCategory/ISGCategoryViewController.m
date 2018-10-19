//
//  ISGCategoryViewController.m
//  ISGCategory
//
//  Created by Isaaclzg on 05/08/2018.
//  Copyright (c) 2018 Isaaclzg. All rights reserved.
//

#import "ISGCategoryViewController.h"
#import "MBProgressHUD+ISGProgress.h"
#import "NSString+ISGRegular.h"

@interface ISGCategoryViewController ()

@end

@implementation ISGCategoryViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	NSString *shoujihao = @"15536512345";
    if ([shoujihao checkTelePhoneNumber]) {
        NSLog(@"1111");
    }else {
        NSLog(@"222");
    }
    
    NSString *zuojihao = @"86412345";
    if ([zuojihao checkSpecialPlane]) {
        NSLog(@"666666");
    }else {
        NSLog(@"7777777");
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
