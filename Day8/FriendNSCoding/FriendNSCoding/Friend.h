//
//  Friend.h
//  FriendNSCoding
//
//  Created by Esraa Hassan on 5/2/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Friend : NSObject<NSCoding>
@property NSString *name;
@property int age;
@property NSString *phone;
@property NSString *address;
@end
