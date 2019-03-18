//
//  LBBaseView.h
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LBBaseView : UIView

//override
- (void)makeUI;
- (void)makeConstraint;
- (void)makeEvent;

@end

NS_ASSUME_NONNULL_END
