//
//  myViewController.h
//  Colleagues
//
//  Created by Esraa Hassan on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface myViewController : ViewController
@property NSString *name;
@property NSString *ageValue;
@property NSString *identifier;
@property NSString *email;
@property NSString *phone;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *idLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;

@end
