//
//  ViewController.h
//  Colleagues
//
//  Created by JETS Mobile Lab -  on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
static NSMutableArray *colleagues;
int count;

@interface ViewController : UIViewController
- (IBAction)leftBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *friendLabel;
- (IBAction)rightBtn:(id)sender;


@end

