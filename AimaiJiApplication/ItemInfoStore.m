//
//  ItemInfoStore.m
//  AimaiJiApplication
//
//  Created by DMT on 2018/11/29.
//  Copyright © 2018年 Stars. All rights reserved.
//

#import "ItemInfoStore.h"
#import "BNRItem.h"

@interface ItemInfoStore();
@property(nonatomic)NSMutableArray *privateitems;
@end
@implementation ItemInfoStore

+(instancetype)sharedStore
{
    static ItemInfoStore *sharedstore=nil;
    if(!sharedstore){
        sharedstore=[[self alloc] initPrivate];
    }
    return sharedstore;
}
-(instancetype) init
{
    @throw[NSException exceptionWithName:@"Singleton" reason:@"Use +[ItemInfoStore]" userInfo:nil];
}
-(instancetype) initPrivate
{
    self=[super init];
    if(self){
        _privateitems=[[NSMutableArray alloc]init];
    }
    return self;
}
-(NSArray *)allItems
{
    return self.privateitems;
}
-(BNRItem *)createitem
{
    BNRItem *item=[BNRItem randomItem];
    [self.privateitems addObject:item];
    return item;
}
@end
