//
//  LoginViewController.m
//  MakeProject
//
//  Created by Nemo on 2021/11/3.
//

#import "LoginViewController.h"

@interface LoginViewController ()


@property (strong, nonatomic) IBOutlet UIView *topVIew;
@property (strong, nonatomic) IBOutlet UIView *bottomView;


@end

@implementation LoginViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    CGFloat screen_width = UIScreen.mainScreen.bounds.size.width;
    CGFloat screen_height = UIScreen.mainScreen.bounds.size.height;
    
    [self.view addSubview:self.topVIew];
    self.topVIew.frame = CGRectMake(0.0f, 0.0f, screen_width, screen_height/2.0f);
    
    [self.view addSubview:self.bottomView];
    self.bottomView.frame = CGRectMake(0.0f, screen_height/2.0f, screen_width, screen_height/2.0f);
}

@end
