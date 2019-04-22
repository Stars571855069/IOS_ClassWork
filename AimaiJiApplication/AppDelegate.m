//
//  AppDelegate.m
//  AimaiJiApplication
//
//  Created by DMT on 2018/11/29.
//  Copyright © 2018年 Stars. All rights reserved.
//

#import "AppDelegate.h"
#import "IndexViewController.h"
#import "SearchItemViewController.h"
#import "ItemTypeDisplayViewController.h"
#import "MyProfileViewController.h"
#import "MyCollectionPageViewController.h"
#import "PrepareToLoginViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:
                   [[UIScreen mainScreen] bounds]];
    //NSBundle *appBundle = [NSBundle mainBundle];
    
    //为页面创建ViewController
    IndexViewController *indexview = [[IndexViewController alloc]init];
    SearchItemViewController *searchitemview = [[SearchItemViewController alloc]init];
    PrepareToLoginViewController *preparelogin = [[PrepareToLoginViewController alloc]init];
    MyCollectionPageViewController *mycollection = [[MyCollectionPageViewController alloc]init];
    
    //将页面的ViewController加入到NavigationController
    UINavigationController *navControllerfirst=[[UINavigationController alloc]initWithRootViewController:indexview];
    UINavigationController *navControllersecond=[[UINavigationController alloc]initWithRootViewController:searchitemview];
    UINavigationController *navControllerthird=[[UINavigationController alloc]initWithRootViewController:mycollection];
    UINavigationController *navControllerforth=[[UINavigationController alloc]initWithRootViewController:preparelogin];
    
    //创建tabBarController对象来切换视图
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    
    //将视图加入tabBarController对象，让标签页的视图能切换
    tabBarController.viewControllers=@[navControllerfirst,navControllersecond,navControllerthird,navControllerforth];
    //
    //将root视图设置为切换标签
    self.window.rootViewController=tabBarController;
    self.window.backgroundColor = [UIColor whiteColor];   [self.window makeKeyAndVisible];
    return YES;
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
