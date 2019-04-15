//
//  Colleague.m
//  Colleagues
//
//  Created by Esraa Hassan on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "Colleague.h"

@implementation Colleague
-(id)initWithColleagueData: (int)age : (int)friend_id : (NSString*) name : (NSString*) phone : (NSString*) email{
    self=[super init];
    if(self){
        [self setName:name];
        [self setAge:age];
        [self setEmail:email];
        [self setPhone:phone];
        [self setColleague_id:friend_id];
    }
    return self;
}

-(NSString*) description{
    NSString *colleague;
    colleague=[NSString stringWithFormat:@"\n colleague's name: %@ \n colleague's email: %@ \n colleague's phoneNum : %@ \n friend's age: %d \n colleague's id: %d \n",self.name,self.email,self.phone,self.colleague_id,self.age];
    return colleague;
}
@end
