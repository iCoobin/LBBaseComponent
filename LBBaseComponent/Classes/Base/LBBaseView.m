//
//  LBBaseView.m
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import "LBBaseView.h"

@implementation LBBaseView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self makeUI];
        [self makeConstraint];
        [self makeEvent];
    }
    return self;
}

- (void)makeUI{
    
}
- (void)makeConstraint{
    
}
- (void)makeEvent{
    
}

@end
