//
//  ItemInfoStore.h
//  AimaiJiApplication
//
//  Created by DMT on 2018/11/29.
//  Copyright © 2018年 Stars. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRItem;

@interface ItemInfoStore : NSObject

@property(nonatomic,readonly)NSArray *allitems;

+(instancetype)sharedStore;

-(BNRItem *)createitem;

@end
