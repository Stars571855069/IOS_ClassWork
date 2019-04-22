//
//  IndexViewController.m
//  AimaiJiApplication
//
//  Created by DMT on 2018/11/29.
//  Copyright © 2018年 Stars. All rights reserved.
//

#import "IndexViewController.h"
#import "ItemShopPageViewController.h"



@interface IndexViewController()
@property(nonatomic,weak) IBOutlet UIImageView *indeximage;
@property (weak, nonatomic) IBOutlet UIButton *viewiteminfo;
@property (weak, nonatomic) IBOutlet UIImageView *indexitemimage1;
@property (weak, nonatomic) IBOutlet UIImageView *indexitemimage2;
@property (weak, nonatomic) IBOutlet UIImageView *indexitemimage3;
@property (weak, nonatomic) IBOutlet UIImageView *indexitemimagebig;

@property (strong, nonatomic) IBOutlet UIScrollView *indexScrollView;
@property (weak, nonatomic) IBOutlet UIView *indexContainerView;


@property (weak, nonatomic) IBOutlet UIScrollView *indexscroller;
@property (weak, nonatomic) IBOutlet UIImageView *indexphoto1;
@property (weak, nonatomic) IBOutlet UIImageView *indexphoto2;
@property (weak, nonatomic) IBOutlet UIImageView *indexphoto3;


@end

@implementation IndexViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrnil
{
    self =[super initWithNibName:nibNameOrNil bundle:nibBundleOrnil];
    if(self){
        //获取tabBarItem属性所指向的UITabBarItem对象
        UITabBarItem *tbi=self.tabBarItem;
        //设置UITabBarItem对象的标题
        tbi.title=@"首页";
        //设置UITabBarItem对象的图像
        UIImage *i =[UIImage imageNamed:@"indexicon.png"];
        //将UIImage对象赋给标签的image属性
        tbi.image=i;
    }
    UINavigationItem *navitem=self.navigationItem;
    navitem.title=@"首页";
    return self;
}
- (IBAction)viewiteminfopage {
    ItemShopPageViewController *itemshoppage=[[ItemShopPageViewController alloc]init];
    [self.navigationController pushViewController:itemshoppage animated:YES];
}


-(void)viewDidLoad
{
    
    self.indeximage.image = [UIImage imageNamed:@"iphone.png"];
    self.indeximage.contentMode = UIViewContentModeScaleToFill;
    //self.indexitemimage1.image = [UIImage imageNamed:@"xiaomi8.png"];
    self.indexitemimage1.contentMode = UIViewContentModeScaleToFill;
    //self.indexitemimage2.image = [UIImage imageNamed:@"xiaomi8.png"];
    self.indexitemimage2.contentMode = UIViewContentModeScaleToFill;
    //self.indexitemimage3.image = [UIImage imageNamed:@"xiaomi8.png"];
    self.indexitemimage3.contentMode = UIViewContentModeScaleToFill;
    self.indexitemimagebig.image = [UIImage imageNamed:@"iphone8.png"];
    self.indexitemimagebig.contentMode = UIViewContentModeScaleToFill;
    
    self.indexphoto1.image=[UIImage imageNamed:@"iphone8.png"];
    //UIImageView *newimage2=[[UIImageView init]alloc];
    self.indexphoto2.image=[UIImage imageNamed:@"iphone.png"];
    //UIImageView *newimage3=[[UIImageView init]alloc];
    self.indexphoto3.image=[UIImage imageNamed:@"xiaomi8.png"];
    
    [self.indexscroller addSubview:_indexphoto1];
    [self.indexscroller addSubview:_indexphoto2];
    [self.indexscroller addSubview:_indexphoto3];

    
    CGRect newscrollsize=CGRectMake(0,0, 375, 0);
    
    
    CGRect newmainSize=newscrollsize;
    newmainSize.size.width*=3;
    self.indexScrollView.frame=newscrollsize;
    self.indexscroller.contentSize=newmainSize.size;
    self.indexscroller.directionalLockEnabled = YES;
    //水平方向
    self.indexscroller.showsHorizontalScrollIndicator = NO;
    //垂直方向
    self.indexscroller.showsVerticalScrollIndicator = NO;
    self.indexscroller.pagingEnabled=YES;
    
        [super viewDidLoad];
        CGRect scrollsize=CGRectMake(0,0, 375, 675);
        CGRect mainSize=scrollsize;
        mainSize.size.height*=1;
        self.indexScrollView.frame=scrollsize;
        self.indexScrollView.backgroundColor=[UIColor colorWithRed:250.0/255.0 green:251.0/255.0 blue:255.0/255.0 alpha:1];
        self.indexScrollView.contentSize = mainSize.size;
        [self.indexScrollView addSubview:self.indexContainerView];
        
        self.indexitemimage1.image=[UIImage imageNamed:@"iphone8.png"];
        self.indexitemimage2.image=[UIImage imageNamed:@"note8.png"];
        self.indexitemimage3.image=[UIImage imageNamed:@"xiaomi8.png"];
    
//        CGRect indexphotosize=CGRectMake(0,0, 375, 675);
//        CGRect indexscrollsize=indexphotosize;
//        mainSize.size.width*=3;
//        self.indexRolePhotoScrollView.frame=indexscrollsize;
//        self.indexRolePhotoScrollView.backgroundColor=[UIColor colorWithRed:250.0/255.0 green:251.0/255.0 blue:255.0/255.0 alpha:1];
//        self.indexRolePhotoScrollView.contentSize = mainSize.size;
//        [self.indexRolePhotoScrollView addSubview:self.indexRolePhotoContainer];
//
//        self.indexRolePhotoView.image = @[
//                        [UIImage imageNamed:@"0"],
//                        [UIImage imageNamed:@"1"],
//                        [UIImage imageNamed:@"2"],
//                        [UIImage imageNamed:@"3"],
//                        [UIImage imageNamed:@"4"]
//                        ];
    
    
    
       // [self.indexRolePhotoContainer addSubview:<#(nonnull UIView *)#>]
    
}

@end
