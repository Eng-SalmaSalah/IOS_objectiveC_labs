//
//  DBManager.m
//  dispatchOnceDemo
//
//  Created by Esraa Hassan on 5/2/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "DBManager.h"

@implementation DBManager
+(DBManager *)sharedInstance{
    static DBManager* dbMgr;
    static dispatch_once_t predicate;
    dispatch_once(&predicate,^{
        dbMgr=[[DBManager alloc]init];
        printf("printed");
    });
    return dbMgr;
}

@end
