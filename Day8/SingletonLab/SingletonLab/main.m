//
//  main.m
//  SingletonLab
//
//  Created by Esraa Hassan on 5/2/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DBManager.h"

int main(int argc, const char * argv[]) {
    DBManager *db1=[DBManager sharedInstance];
    DBManager *db2=[DBManager sharedInstance];
    DBManager *db3=[DBManager sharedInstance];
    return NSApplicationMain(argc, argv);
}
