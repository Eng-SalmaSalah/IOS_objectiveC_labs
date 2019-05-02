//
//  Friend.m
//  FriendNSCoding
//
//  Created by Esraa Hassan on 5/2/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "Friend.h"

@implementation Friend
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self.name=[aDecoder decodeObjectForKey:@"name"];
    self.phone=[aDecoder decodeObjectForKey:@"phone"];
    self.address=[aDecoder decodeObjectForKey:@"address"];
    self.age=[aDecoder decodeIntForKey:@"age"];
    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:_name forKey:@"name"];
    [aCoder encodeObject:_phone forKey:@"phone"];
    [aCoder encodeObject:_address forKey:@"address"];
    [aCoder encodeInt:_age forKey:@"age"];
}
@end
