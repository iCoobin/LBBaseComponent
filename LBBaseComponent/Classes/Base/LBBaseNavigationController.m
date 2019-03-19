//
//  LBBaseNavigationController.m
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/19.
//

#import "LBBaseNavigationController.h"

@interface LBBaseNavigationController ()

@end

@implementation LBBaseNavigationController

- (BOOL)prefersStatusBarHidden{
    return self.topViewController.prefersStatusBarHidden;
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return self.topViewController.preferredStatusBarStyle;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

@end
