//
//  YFViewController.m
//  YFLoginModule
//
//  Created by zhangcai on 11/08/2021.
//  Copyright (c) 2021 zhangcai. All rights reserved.
//

#import "YFViewController.h"
#import <PrepareViewController.h>

@interface YFViewController ()

@end

@implementation YFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)prepareLoginEvent:(id)sender {
    
    PrepareViewController *vc = [[PrepareViewController alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
