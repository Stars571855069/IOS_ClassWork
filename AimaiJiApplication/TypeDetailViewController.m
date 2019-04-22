//
//  TypeDetailViewController.m
//  AimaiJiApplication
//
//  Created by DMT on 2018/11/29.
//  Copyright © 2018年 Stars. All rights reserved.
//

#import "TypeDetailViewController.h"
#import "SearchItemViewController.h"
#import "AFNetworking.h"

@interface TypeDetailViewController ()
{
    NSArray * resultarray;
}
@property (weak, nonatomic) IBOutlet UILabel *typenameField;
@property (weak, nonatomic) IBOutlet UIButton *addincollection;

@property (weak, nonatomic) IBOutlet UITextView *typeinfoField;
@property (weak, nonatomic) IBOutlet UIImageView *typeimageField;
@property (strong, nonatomic) IBOutlet UIScrollView *Tscrollview;
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UILabel *typeprice;

@property (weak, nonatomic) IBOutlet UILabel *hiddenimageurl;
@property (weak, nonatomic) IBOutlet UIButton *existinfo;

@end

@implementation TypeDetailViewController

-(instancetype)init
{
    
    UINavigationItem *navitem=self.navigationItem;
    navitem.title=@"产品详情";
    
    return self;
    
    
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    self.hiddenimageurl.hidden=true;
    CGRect scrollsize=CGRectMake(0,0, 375, 675);
    CGRect mainSize=scrollsize;
    //CGFloat *reqheight=self.typeimageField.size.height
    mainSize.size.height*=1;
    self.Tscrollview.frame=scrollsize;
    self.Tscrollview.backgroundColor=[UIColor colorWithRed:250.0/255.0 green:251.0/255.0 blue:255.0/255.0 alpha:1];
    self.Tscrollview.contentSize = mainSize.size;
    [self.Tscrollview addSubview:self.containerView];
    
    
    //self.Tscrollview=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320 , 300)];
    //[self.view addSubview:homeMainScrollView];
//    scrollView.frame=scrollsize;
//    self.TscrollView addSubview:_Tscrollview];
//    scrollView.scrollEnabled = YES;
//    scrollView.showsVerticalScrollIndicator=YES;
//    self.view addSubview:self.Tscrollview;
//    scrollView.contentSize = mainSize.size;
//    NSLog(@"ScrollView Activated.");
    
}

-(void)viewWillAppear:(BOOL)animated
{
    NSUserDefaults *userinfo = [NSUserDefaults standardUserDefaults];
    
    NSString *collectionname = [userinfo objectForKey:@"collectionname"];
    NSString *loginindex = [userinfo objectForKey:@"savedindex"];
    NSString *currentuser = [userinfo objectForKey:@"savedusername"];
    //NSLog(@"%@",content);
    if([loginindex intValue]!=1){
        self.addincollection.hidden=true;
    }
    else{
        self.addincollection.hidden=false;
    }

    //1.创建会话管理者
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    //设置请求数据格式自动转换为JSON
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    
    // manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/plain",@"text/html", nil];
    
    
    
        NSDictionary *paramDict = @{
                                    @"apicode":@"view",
                                    @"args":@{
                                            @"content":collectionname,
                                            @"checkowner":currentuser
                                            }
                                    };
    
    
    [manager POST:@"http://localhost:3000/ItemInfo" parameters:paramDict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSLog(@"%@---%@",[responseObject class],responseObject);
        NSString *code=responseObject[@"data"][@"code"];
        int returncode = [code intValue];
        NSLog(@"%d",returncode);
        
        if (returncode!=0){
            if(returncode!=2){
                //self.typenameField.hidden=false;
                //self.searchresultcontainer.hidden=true;
            }
            else if(returncode==2){
                //NSLog(@"找到了符合搜索条件的物品");
                
                self.typenameField.text=responseObject[@"data"][@"itemname"];
                self.typeinfoField.text=responseObject[@"data"][@"itemdetail"];
                //将价格数字转化为字符串，载入商品字符串
                NSString *price = [NSString stringWithFormat:@"%@",responseObject[@"data"][@"itemprice"]];
                
                self.typeprice.text=price;
                
                self.hiddenimageurl.text=responseObject[@"data"][@"itemimage"];
                [self.typeimageField setImage:[UIImage imageNamed:responseObject[@"data"][@"itemimage"]]];
                
                NSString *collect=responseObject[@"data"][@"collectcheck"];
                if(collect){
                    int collectcode = [collect intValue];
                    NSLog(@"CheckCode:");
                    NSLog(@"%d",collectcode);
                    if(collectcode==1)
                    {
                        self.addincollection.hidden=true;
                        self.existinfo.hidden=false;
                        
                    }
                    else{
                        //self.addincollection.hidden=false;
                        self.existinfo.hidden=true;
                        
                    }
                }

            }
  
        }
        else{
            NSLog(@"搜索失败");
        };
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"请求失败--%@",error);
    }];
}

- (IBAction)setcollection:(id)sender {
    //1.创建会话管理者
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    //设置请求数据格式自动转换为JSON
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    
    // manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/plain",@"text/html", nil];
    NSUserDefaults *userinfo = [NSUserDefaults standardUserDefaults];
    
    
    NSString *currentuser = [userinfo objectForKey:@"savedusername"];
    NSLog(@"adding item to user %@",currentuser);
    
    NSDictionary *paramDict = @{
                                @"apicode":@"addincollect",
                                @"args":@{
                                        @"collectname":self.typenameField.text,
                                        @"targetname":currentuser,
                                        @"targetprice":self.typeprice.text,
                                        @"targetimage":self.hiddenimageurl.text
                                        }
                                };
    
    [manager POST:@"http://localhost:3000/ItemInfo" parameters:paramDict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSLog(@"%@---%@",[responseObject class],responseObject);
        NSString *code=responseObject[@"data"][@"code"];
        int returncode = [code intValue];
        NSLog(@"%d",returncode);
        
        if (returncode!=0){
                //NSLog(@"找到了符合搜索条件的物品");
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"成功添加到收藏夹" delegate:nil cancelButtonTitle:@"好的" otherButtonTitles:nil, nil];
            [alert show];
            
                

            
        }
        else{
            NSLog(@"添加失败");
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"该物品已存在于你的收藏夹中" delegate:nil cancelButtonTitle:@"好的" otherButtonTitles:nil, nil];
            [alert show];
        };
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"请求失败--%@",error);
    }];
    
    
}



@end
