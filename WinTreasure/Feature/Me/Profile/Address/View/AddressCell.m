//
//  AddressCell.m
//  WinTreasure
//
//  Created by Apple on 16/6/22.
//  Copyright © 2016年 linitial. All rights reserved.
//

#import "AddressCell.h"

@interface AddressCell ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;

@end

@implementation AddressCell

- (void)awakeFromNib {
    // Initialization code
    [super awakeFromNib];

}

+ (instancetype)cellWithTableView:(UITableView *)tableview {
    static NSString *cellID = @"AddressCell";
    AddressCell *cell = [tableview dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = (AddressCell *)[[[NSBundle mainBundle] loadNibNamed:@"AddressCell" owner:self options:nil] lastObject];
    }
    return cell;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

- (void)setModel:(AddressModel *)model {
    _model = model;
    _nameLabel.text = _model.name;
    _addressLabel.text = _model.address;
    _phoneLabel.text = _model.phone;
}

@end
