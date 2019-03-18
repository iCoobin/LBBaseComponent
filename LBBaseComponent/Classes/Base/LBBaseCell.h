//
//  LBBaseCell.h
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LBBaseCell : UITableViewCell

@property (nonatomic,assign) NSIndexPath *indexPath;
@property (nonatomic,strong) id viewModel;

//需override
- (void)makeUI;
- (void)makeConstraint;
- (void)makeEvent;
- (void)refreshUI:(id)viewModel;
- (void)remakeConstraint;

+ (UITableViewCell *)cellWith:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath viewModel:(id)viewModel;

@end

NS_ASSUME_NONNULL_END
