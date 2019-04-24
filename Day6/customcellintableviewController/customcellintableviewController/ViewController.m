//
//  ViewController.m
//  customcellintableviewController
//
//  Created by JETS Mobile Lab -  on 4/24/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSArray *firstLabelArray;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    firstLabelArray = @[@"label one", @"label two",@"label three"];
  
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [firstLabelArray count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 UITableViewCell *myCell=[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    myCell.textLabel.text=[firstLabelArray objectAtIndex:indexPath.row];
    return myCell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{return 100;}

@end
