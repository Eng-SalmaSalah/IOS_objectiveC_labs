//
//  ViewController.m
//  GetImagesUsingCocoapod
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "MyCollectionViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>


@interface ViewController (){
    NSMutableData *receivedData;
    NSArray *movies;
    NSMutableArray *imagesLinks;
    NSDictionary *dict;
}
    
    @end

@implementation ViewController
    
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *link=@"http://api.androidhive.info/json/movies.json";
    NSURL *url=[NSURL URLWithString:link];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    NSURLConnection *connection=[[NSURLConnection alloc]initWithRequest:request delegate:self];
    [connection start];
    self.collectionViewOutlet.delegate=self;
    self.collectionViewOutlet.dataSource=self;
    
    // Do any additional setup after loading the view, typically from a nib.
}
   
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    receivedData=[[NSMutableData alloc]init];
    movies=[[NSArray alloc]init];
    imagesLinks=[[NSMutableArray alloc]init];
    dict=[[NSDictionary alloc]init];
}
    
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [receivedData appendData:data];
    
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    movies=[NSJSONSerialization JSONObjectWithData:receivedData options:NSJSONReadingAllowFragments error:nil];
    for(int i=0;i<[movies count];i++){
        dict=[movies objectAtIndex:i];
        [imagesLinks addObject:[dict objectForKey:@"image"]];
        NSLog(@"%@", [dict objectForKey:@"image"]);
    }
}
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 15;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    MyCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    // Configure the cell

    NSString *imageLink=[imagesLinks objectAtIndex:indexPath.row];
    [cell.imageViewOutlet sd_setImageWithURL:[NSURL URLWithString:imageLink]
                      placeholderImage:[UIImage imageNamed:@"placeholder.png"]];

    
    return cell;
}
    @end
