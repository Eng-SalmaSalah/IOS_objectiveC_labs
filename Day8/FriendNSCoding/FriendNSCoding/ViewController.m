//
//  ViewController.m
//  FriendNSCoding
//
//  Created by Esraa Hassan on 5/2/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "Friend.h"

@interface ViewController (){
    NSUserDefaults *userDefaults;
    
}
@property (weak, nonatomic) IBOutlet UITextField *nameOutlet;
@property (weak, nonatomic) IBOutlet UITextField *ageOutlet;
@property (weak, nonatomic) IBOutlet UITextField *phoneOutlet;
@property (weak, nonatomic) IBOutlet UITextField *addressOutlet;
- (IBAction)addBtn:(UIButton *)sender;
- (IBAction)getBtn:(UIButton *)sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    userDefaults=[NSUserDefaults standardUserDefaults];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)addBtn:(UIButton *)sender {
    Friend *friend=[[Friend alloc]init];
    friend.name=_nameOutlet.text;
    friend.address=_addressOutlet.text;
    friend.phone=_phoneOutlet.text;
    friend.age=[_ageOutlet.text intValue];
    NSData *friendData=[NSKeyedArchiver archivedDataWithRootObject:friend];
    [userDefaults setObject:friendData forKey:@"friend"];
    _nameOutlet.text=@"";
    _addressOutlet.text=@"";
    _phoneOutlet.text=@"";
    _ageOutlet.text=@"";
    
}

- (IBAction)getBtn:(UIButton *)sender {
    NSData *data=[userDefaults objectForKey:@"friend"];
    Friend *retrievedFriend=[NSKeyedUnarchiver unarchiveObjectWithData:data];
    _nameOutlet.text=retrievedFriend.name;
    _addressOutlet.text=retrievedFriend.address;
    _phoneOutlet.text=retrievedFriend.phone;
    _ageOutlet.text=[NSString stringWithFormat:@"%i", retrievedFriend.age];
}
@end
