//
//  LBBaseCell.m
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import "LBBaseCell.h"

@implementation LBBaseCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = UIColor.clearColor;
        [self makeUI];
        [self makeConstraint];
        [self makeEvent];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self makeUI];
    [self makeConstraint];
    [self makeEvent];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)makeUI{
    
}
- (void)makeConstraint{
    
}
- (void)makeEvent{
    
}
- (void)refreshUI:(id)viewModel{
    
}
- (void)remakeConstraint{
    
}

+ (UITableViewCell *)cellWith:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath viewModel:(id)viewModel{
    [tableView registerClass:self forCellReuseIdentifier:NSStringFromClass(self)];
    LBBaseCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(self)];
    cell.indexPath = indexPath;
    cell.viewModel = viewModel;
    [cell refreshUI:viewModel];
    [cell remakeConstraint];
    return cell;
}

@end
