//
//  Book.m
//  NSCodingDemo
//
//  Created by Esraa Hassan on 5/2/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "Book.h"

@implementation Book
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self.title=[aDecoder decodeObjectForKey:@"title"];
    self.subTitle=[aDecoder decodeObjectForKey:@"subTitle"];
    self.papers=[aDecoder decodeIntForKey:@"papers"];

    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder
{//3mlna encoding
    //[super encodeWithCoder:coder];
    [aCoder encodeObject:_title forKey:@"title"];
    [aCoder encodeObject:_subTitle forKey:@"subtitle"];
    [aCoder encodeInt:_papers forKey:@"papers"];

}
@end
