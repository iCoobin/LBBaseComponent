//
//  UITableView+Extension.h
//  FDFullscreenPopGesture
//
//  Created by 程守斌 on 2019/3/19.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (Extension)

/**
 便利构建器

 @param frame 大小
 @param style 样式
 @return tableView
 */
+ (UITableView *)create:(CGRect)frame style:(UITableViewStyle)style;
+ (UITableView *)create:(CGRect)frame style:(UITableViewStyle)style edgeTop:(CGFloat)edgeTop edgeBottom:(CGFloat)edgeBottom;

@end

NS_ASSUME_NONNULL_END
