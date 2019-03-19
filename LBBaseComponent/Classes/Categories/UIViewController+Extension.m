//
//  UIViewController+Extension.m
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/19.
//

#import "UIViewController+Extension.h"
#import <objc/runtime.h>

@implementation UIViewController (Extension)

+ (void)load{
    Method originalMethod = class_getInstanceMethod(self, @selector(viewDidLoad));
    Method swizzledMethod = class_getInstanceMethod(self, @selector(ex_viewDidLoad));
    method_exchangeImplementations(originalMethod, swizzledMethod);
}

- (void)ex_viewDidLoad{
    self.extendedLayoutIncludesOpaqueBars = YES;
    if (@available(iOS 11.0, *)) {
    }else {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    [self ex_viewDidLoad];
}

@end
