//
//  UserCommentTableViewCell.h
//  AimaiJiApplication
//
//  Created by DMT on 2019/1/6.
//  Copyright © 2019年 Stars. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserCommentTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *commentuserphoto;
@property (weak, nonatomic) IBOutlet UILabel *commentusername;
@property (weak, nonatomic) IBOutlet UILabel *commentdate;
@property (weak, nonatomic) IBOutlet UITextView *comment;

@property (weak, nonatomic) IBOutlet UILabel *hiddenid;

+(instancetype)UserCommentTableViewCell;


@end
