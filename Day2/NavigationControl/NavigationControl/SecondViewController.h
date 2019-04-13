//
//  SecondViewController.h
//  NavigationControl
//
//  Created by JETS Mobile Lab -  on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClearText.h"



@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property NSString *userName;
@property id<ClearText> clearText;
@end


