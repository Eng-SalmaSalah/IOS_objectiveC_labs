//
//  ViewController.h
//  NavigationControl
//
//  Created by JETS Mobile Lab -  on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClearText.h"

@interface ViewController : UIViewController <ClearText>
- (IBAction)welcomeUser:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

