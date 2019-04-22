//
//  AppDelegate.h
//  AimaiJiApplication
//
//  Created by DMT on 2018/11/29.
//  Copyright © 2018年 Stars. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FMDB.h"
#import <sqlite3.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) FMDatabase* sqlitedb;

-(FMDatabase*) shareDb;

@end

