//
//  UserCommentTableViewCell.m
//  AimaiJiApplication
//
//  Created by DMT on 2019/1/6.
//  Copyright © 2019年 Stars. All rights reserved.
//

#import "UserCommentTableViewCell.h"

@implementation UserCommentTableViewCell

+(instancetype)UserCommentTableViewCell{
    //在类方法中加载xib文件,注意:loadNibNamed:owner:options:这个方法返回的是NSArray,
    //所以在后面加上firstObject或者lastObject或者[0]都可以;因为我们的Xib文件中,只有一个cell
    return [[[NSBundle mainBundle] loadNibNamed:@"UserCommentTableViewCell" owner:nil options:nil] lastObject];
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
