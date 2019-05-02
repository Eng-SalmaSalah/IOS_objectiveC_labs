//
//  Book.h
//  NSCodingDemo
//
//  Created by Esraa Hassan on 5/2/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject<NSCoding>
@property NSString *title;
@property NSString *subTitle;

@property int papers;
@end
