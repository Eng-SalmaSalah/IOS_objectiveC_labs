//
//  ViewController.m
//  NSCodingDemo
//
//  Created by Esraa Hassan on 5/2/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"

@interface ViewController (){
    NSUserDefaults *userDefaults;
}
- (IBAction)btnInsert:(UIButton *)sender;

- (IBAction)btnGet:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *infoOutlet;

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



- (IBAction)btnInsert:(UIButton *)sender {
    Book *book=[[Book alloc]init];
    book.title=@"myBook";
    book.subTitle=@"mySubtitle";
    book.papers=100;
    NSData *data=[NSKeyedArchiver archivedDataWithRootObject:book];
    [userDefaults setObject:data forKey:@"myFirstBook"];
    
}

- (IBAction)btnGet:(UIButton *)sender {
    NSData *data=[userDefaults objectForKey:@"myFirstBook"];
    Book *book=[NSKeyedUnarchiver unarchiveObjectWithData:data];
    _infoOutlet.text=book.title;
}
@end
