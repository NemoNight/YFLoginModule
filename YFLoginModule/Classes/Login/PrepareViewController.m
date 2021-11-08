//
//  PrepareViewController.m
//  MakeProject
//
//  Created by Nemo on 2021/11/4.
//

#import "PrepareViewController.h"
#import "LoginViewController.h"
#import "Tools.h"

@interface PrepareViewController ()

@property (nonatomic, strong) UIButton *prepareBtn;

@end

@implementation PrepareViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    CGFloat screen_width = UIScreen.mainScreen.bounds.size.width;
    CGFloat screen_height = UIScreen.mainScreen.bounds.size.height;
    
    CGRect btnRect = CGRectMake(screen_width/2.0f-50.0f, screen_height/2.0f-50.0f, 100.0f, 100.0f);
    self.prepareBtn = [[UIButton alloc] initWithFrame:btnRect];
    self.prepareBtn.backgroundColor = UIColor.systemYellowColor;
    [self.prepareBtn setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    self.prepareBtn.titleLabel.font = [UIFont systemFontOfSize:15.0f];
    [self.prepareBtn setTitle:@"登录" forState:UIControlStateNormal];
    [self.view addSubview:self.prepareBtn];
    [self.prepareBtn addTarget:self
                        action:@selector(prepareLogin:)
              forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void)prepareLogin:(id)target {
    
    NSBundle *bundle = [Tools bundlePathWithBundleName:@"YFLoginModule" targetClass:[LoginViewController class]];
    LoginViewController *vc = [[LoginViewController alloc] initWithNibName:@"LoginViewController"
                                                                    bundle:bundle];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
