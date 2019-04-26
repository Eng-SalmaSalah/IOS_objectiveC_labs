//
//  ViewController.m
//  CustomCellUITableView
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "FriendTableViewCell.h"

@interface ViewController ()
{
    NSArray *firstLabelArray;
    NSArray *secondLabelArray;
    NSArray *imagesArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    firstLabelArray = @[@"Salma", @"Sahar", @"Amr"];
    secondLabelArray=@[@"24 years old",@"22 years old",@"23 years old"];
    imagesArray=@[@"femaleOne",@"femaleTwo",@"maleOne"];
    _tableViewOutlet.dataSource=self;
    _tableViewOutlet.delegate=self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [firstLabelArray count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FriendTableViewCell *cell=(FriendTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.nameOutlet.text=[firstLabelArray objectAtIndex:indexPath.row];
    cell.ageOutlet.text=[secondLabelArray objectAtIndex:indexPath.row];
    cell.imgOutlet.image=[UIImage imageNamed:[imagesArray objectAtIndex:indexPath.row]];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{return 100;}


@end
