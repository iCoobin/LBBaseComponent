//
//  UITableView+Extension.m
//  FDFullscreenPopGesture
//
//  Created by 程守斌 on 2019/3/19.
//

#import "UITableView+Extension.h"

@implementation UITableView (Extension)

+ (UITableView *)create:(CGRect)frame style:(UITableViewStyle)style{
    return [self create:frame style:style edgeTop:0 edgeBottom:0];
}
+ (UITableView *)create:(CGRect)frame style:(UITableViewStyle)style edgeTop:(CGFloat)edgeTop edgeBottom:(CGFloat)edgeBottom{
    UITableView *tableView = [[UITableView alloc] initWithFrame:frame style:style];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView.backgroundColor = UIColor.clearColor;
    tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    tableView.contentInset = UIEdgeInsetsMake(edgeTop, 0, edgeBottom, 0);
    tableView.scrollIndicatorInsets = UIEdgeInsetsMake(edgeTop, 0, edgeBottom, 0);
    [tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"UITableViewCell"];
    if (@available(iOS 11.0, *)) {
        tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    return tableView;
}

@end
