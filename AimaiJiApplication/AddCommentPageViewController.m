//
//  AddCommentPageViewController.m
//  AimaiJiApplication
//
//  Created by DMT on 2019/1/6.
//  Copyright © 2019年 Stars. All rights reserved.
//

#import "AddCommentPageViewController.h"
#import "AFNetworking.h"

@interface AddCommentPageViewController ()

@property (weak, nonatomic) IBOutlet UITextView *comment;

@property (weak, nonatomic) IBOutlet UIButton *addcomment;

@end

@implementation AddCommentPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(instancetype)init
{
    
    UINavigationItem *navitem=self.navigationItem;
    navitem.title=@"发布评论";
    
    return self;
    
    
}

- (IBAction)addcomment:(id)sender {
    
    NSUserDefaults *userinfo = [NSUserDefaults standardUserDefaults];

    NSString *commentuser = [userinfo objectForKey:@"savedusername"];
    //NSString *displayeduserinst = [userinfo objectForKey:@"saveduserinst"];
    NSString *commentuserphoto = [userinfo objectForKey:@"saveduserphoto"];
    //发布动态
    //============
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    
    //获取和设置时间
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    // ----------设置你想要的格式,hh与HH的区别:分别表示12小时制,24小时制
    
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    
    //现在时间,你可以输出来看下是什么格式
    
    NSDate *datenow = [NSDate date];
    
    //----------将nsdate按formatter格式转成nsstring
    
    NSString *currentTimeString = [formatter stringFromDate:datenow];
    
    NSLog(@"currentTimeString =  %@",currentTimeString);

    
    
    //

        
        NSDictionary *paramDict = @{
                                    @"apicode":@"addcomment",
                                    @"args":@{
                                            @"commentuser":commentuser,
                                            @"commentuserphoto":commentuserphoto,
                                            @"comment":self.comment.text,
                                            @"commentdate":currentTimeString
                                            }
                                    };
    NSLog(@"%@",commentuser);
    NSLog(@"%@",commentuserphoto);
    NSLog(@"%@",self.comment.text);
    
        [manager POST:@"http://localhost:3000/Find" parameters:paramDict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
            NSLog(@"%@---%@",[responseObject class],responseObject);
            NSString *code=responseObject[@"data"][@"code"];
            int returncode = [code intValue];
            NSLog(@"%d",returncode);
            
            if (returncode!=0){
                    NSLog(@"发布成功");

                    [self.navigationController popViewControllerAnimated:YES];
                }
                else{
                    NSLog(@"发布失败");
                }
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"请求失败--%@",error);
        }];
        
        //——————————————————————————————————————————————————————————————————————————
}


@end
