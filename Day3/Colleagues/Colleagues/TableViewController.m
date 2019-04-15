//
//  TableViewController.m
//  Colleagues
//
//  Created by Esraa Hassan on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "TableViewController.h"
#import<Foundation/Foundation.h>
#import "Colleague.h"
#import "myViewController.h"
@interface TableViewController ()

@end

@implementation TableViewController{
    NSMutableArray *maleColleagues;
    NSMutableArray *femaleColleagues;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    maleColleagues=[NSMutableArray new];
    femaleColleagues=[NSMutableArray new];
    Colleague *firstColleague=[Colleague alloc];
    Colleague *secondColleague=[Colleague alloc];
    Colleague *thirdColleague=[Colleague alloc];
    Colleague *forthColleague=[Colleague alloc];
    Colleague *fifthColleague=[Colleague alloc];
    Colleague *sixthColleague=[Colleague alloc];
    firstColleague=[firstColleague initWithColleagueData:1 :20 :@"radya" :@"01062459872" :@"radya@gmail.com"];
    secondColleague=[secondColleague initWithColleagueData:2 :23 :@"menna" :@"01117799805" :@"menna@gmail.com"];
    thirdColleague=[thirdColleague initWithColleagueData:3 :25 :@"nour" :@"0169872539" :@"nouran@gmail.com"];
    forthColleague = [forthColleague initWithColleagueData:4 :24 :@"esraa" :@"0129687458" :@"esraa@gmail.com"];
    fifthColleague=[fifthColleague initWithColleagueData:5 :25 :@"kamal" :@"0195672539" :@"kamal@gmail.com"];
    sixthColleague = [sixthColleague initWithColleagueData:6 :24 :@"amr" :@"01123687458" :@"amr@gmail.com"];
    [femaleColleagues addObject:firstColleague];
    [femaleColleagues addObject:secondColleague];
    [femaleColleagues addObject:thirdColleague];
    [femaleColleagues addObject:forthColleague];
    [maleColleagues addObject:fifthColleague];
    [maleColleagues addObject:sixthColleague];

    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return [maleColleagues count];
            break;
        case 1:
            return [femaleColleagues count];
            break;
        default:
            return 0;
            break;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    switch(indexPath.section){
        case 0:
            cell.textLabel.text=[[maleColleagues objectAtIndex:indexPath.row] name];
            break;
        case 1:
            cell.textLabel.text=[[femaleColleagues objectAtIndex:indexPath.row] name];
            break;
         default:
            cell.textLabel.text=@" ";
            break;
            
    }
    
    return cell;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return @"Male Colleagues";
            break;
        case 1:
            return @"Female Colleagues";
            break;
        default:
            return @"";
            break;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *ageString;
    NSString *colleague_id;
    switch (indexPath.section) {
        case 0:
        {
            myViewController *colleagueDetails=[self.storyboard instantiateViewControllerWithIdentifier:@"details"];
            ageString=[[NSString alloc]initWithFormat:@"%d",[[maleColleagues objectAtIndex:indexPath.row]age]];
            colleagueDetails.ageValue=ageString;
            colleague_id=[[NSString alloc]initWithFormat:@"%d",[[maleColleagues objectAtIndex:indexPath.row]colleague_id]];
            colleagueDetails.identifier=colleague_id;
            colleagueDetails.name=[[maleColleagues objectAtIndex:indexPath.row]name];
            colleagueDetails.email=[[maleColleagues objectAtIndex:indexPath.row]email];
            colleagueDetails.phone=[[maleColleagues objectAtIndex:indexPath.row]phone];
            [self.navigationController pushViewController:colleagueDetails animated:NO];
            break;
        }
        case 1:
        {
            
            myViewController *colleagueDetails=[self.storyboard instantiateViewControllerWithIdentifier:@"details"];
            
            ageString=[[NSString alloc]initWithFormat:@"%d",[[femaleColleagues objectAtIndex:indexPath.row]age]];
            colleagueDetails.ageValue=ageString;

            colleague_id=[[NSString alloc]initWithFormat:@"%d",[[femaleColleagues objectAtIndex:indexPath.row]colleague_id]];
            colleagueDetails.identifier=colleague_id;

            colleagueDetails.name=[[femaleColleagues objectAtIndex:indexPath.row]name];
            colleagueDetails.email=[[femaleColleagues objectAtIndex:indexPath.row]email];
            colleagueDetails.phone=[[femaleColleagues objectAtIndex:indexPath.row]phone];
            [self.navigationController pushViewController:colleagueDetails animated:NO];
            break;
        }
            
        default:
        {
         
            break;
        }
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
