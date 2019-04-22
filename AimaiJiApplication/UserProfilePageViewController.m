//
//  UserProfilePageViewController.m
//  AimaiJiApplication
//
//  Created by DMT on 2018/11/29.
//  Copyright © 2018年 Stars. All rights reserved.
//

#import "UserProfilePageViewController.h"
#import "MyProfileViewController.h"
#import "AFNetworking.h"

@interface UserProfilePageViewController ()
@property (weak, nonatomic) IBOutlet UILabel *username;
//@property (weak, nonatomic) IBOutlet UILabel *userinst;
@property (weak, nonatomic) IBOutlet UITextView *userinst;
@property (weak, nonatomic) IBOutlet UIImageView *userphoto;



@end

@implementation UserProfilePageViewController

-(instancetype)init
{
    
        UINavigationItem *navitem=self.navigationItem;
        navitem.title=@"个人资料";
    
    return self;
}
-(void)viewWillAppear:(BOOL)animated
{
    NSUserDefaults *userinfo = [NSUserDefaults standardUserDefaults];
    NSString *displayedusername = [userinfo objectForKey:@"savedusername"];
    NSString *displayeduserinst = [userinfo objectForKey:@"saveduserinst"];
    NSString *displayeduserphoto = [userinfo objectForKey:@"saveduserphoto"];
    
    self.username.text=displayedusername;
    self.userinst.text=displayeduserinst;
    [self.userphoto setImage:[UIImage imageNamed:displayeduserphoto]];
}

- (IBAction)changephoto:(id)sender {
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    
    // If the device ahs a camera, take a picture, otherwise,
    // just pick from the photo library
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    } else {
        imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    }
    
    imagePicker.delegate = self;
    
    // Place image picker on the screen
    [self presentViewController:imagePicker animated:YES completion:NULL];

}



//处理上传图片
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    [picker dismissViewControllerAnimated:YES completion:^{}];
    UIImage *receivedimage = [info objectForKey:UIImagePickerControllerOriginalImage];
        
   	//通过key值获取到图片
    self.userphoto.image = receivedimage;  //给UIimageView赋值已经选择的相片
    
    
    //在这里进行图片上传的网络请求
    //......
    
    //下面是iOS两种获取图片的方法，一种获取为jpeg，一种获取为png
    //转为jpeg上传可以让图片的大小压缩
    
    
  
    NSMutableArray *photos = [NSMutableArray array];
    [photos addObject:receivedimage];
    
    NSUserDefaults *userinfo = [NSUserDefaults standardUserDefaults];
    NSString *loginedusername = [userinfo objectForKey:@"savedusername"];
    
    NSDictionary *paramDict = @{
                                    @"apicode":@"photoupload",
                                    @"args":@{
                                    @"username":loginedusername,
                                    }
                                };
    
    
    //temp为服务器URL;
    NSString *url = @"http://localhost:3000/Photoupload";
    
    NSMutableURLRequest *request = [[AFHTTPRequestSerializer serializer] multipartFormRequestWithMethod:@"POST" URLString:url parameters:paramDict constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        //参数name：是后台给你的图片在服务器上字段名;
        
        
        
        for (int i = 0; i < photos.count; i++) {
            NSDateFormatter *formatter=[[NSDateFormatter alloc]init];
            formatter.dateFormat=@"yyyyMMddHHmmss";
            NSString *str=[formatter stringFromDate:[NSDate date]];
            //参数fileNmae：文件名字，
            NSString *fileName=[NSString stringWithFormat:@"%@.jpg",str];
            UIImage *image = photos[i];
            NSData *imageData = UIImageJPEGRepresentation(image, 0.28);
            //参数mimeType：这个是决定于后来接收什么类型的图片，接收的时png就用image/png ,接收的时jpeg就用image/jpeg
           // [formData appendPartWithFileData:imageData name:[NSString stringWithFormat:@"upload%d",i+1] fileName:fileName mimeType:@"image/jpeg"];
            [formData appendPartWithFileData:imageData name:@"Filedata" fileName:@"Filedate.png" mimeType:@"image/png"];
        }
        
        
        
    } error:nil];
    
    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    //设置服务器返回内容的接受格式
    AFHTTPResponseSerializer *responseSer = [AFHTTPResponseSerializer serializer];
    responseSer.acceptableContentTypes = [NSSet setWithObjects:@"text/html", nil];
    manager.responseSerializer = responseSer;
    
    //    NSProgress *progress = nil;
    
    NSURLSessionUploadTask *uploadTask = [manager uploadTaskWithStreamedRequest:request progress:nil completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        
        if (error) {
            NSLog(@"Error: %@", error);
            
        } else {
            
            NSString *str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
            
            NSLog(@"%@\n %@", response, str);
        }
    }];
    
    [uploadTask resume];
    
    
    
}








//取消上传图片
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:^{}];
}

@end
