//
//  Colleague.h
//  Colleagues
//
//  Created by Esraa Hassan on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Colleague : NSObject
@property int colleague_id;
@property NSString *name;
@property int age;
@property NSString *email;
@property NSString *phone;


-(id)initWithColleagueData: (int)age : (int)colleague_id : (NSString*) name : (NSString*) phone : (NSString*) email;
-(NSString*) description;

@end
