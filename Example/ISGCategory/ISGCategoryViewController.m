//
//  ISGCategoryViewController.m
//  ISGCategory
//
//  Created by Isaaclzg on 05/08/2018.
//  Copyright (c) 2018 Isaaclzg. All rights reserved.
//

#import "ISGCategoryViewController.h"
#import "MBProgressHUD+ISGProgress.h"

@interface ISGCategoryViewController ()

@end

@implementation ISGCategoryViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [MBProgressHUD showSuccess:@"success" toView:self.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
