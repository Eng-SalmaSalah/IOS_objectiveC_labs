//
//  ViewController.h
//  ValidationNumberVsText
//
//  Created by JETS Mobile Lab -  on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldOutlet;
@property (weak, nonatomic) IBOutlet UILabel *labelOutlet;

- (IBAction)checkNumBtn:(UIButton *)sender;


- (IBAction)checkTxtBtn:(UIButton *)sender;


@end

