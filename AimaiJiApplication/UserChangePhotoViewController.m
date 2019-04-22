//
//  UserChangePhotoViewController.m
//  AimaiJiApplication
//
//  Created by DMT on 2018/12/27.
//  Copyright © 2018年 Stars. All rights reserved.
//

#import "UserChangePhotoViewController.h"

@interface UserChangePhotoViewController ()<UIActionSheetDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>
//一定要声明这三个协议，缺一不可

@property(nonatomic,strong) UIImagePickerController *imagePicker; //声明全局的UIImagePickerController

@end

@implementation UserChangePhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
