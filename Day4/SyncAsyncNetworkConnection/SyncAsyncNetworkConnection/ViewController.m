//
//  ViewController.m
//  SyncAsyncNetworkConnection
//
//  Created by Esraa Hassan on 4/22/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)syncBtn:(UIButton *)sender;
- (IBAction)asyncBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIWebView *webView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)syncBtn:(UIButton *)sender {
    self.webView.delegate=self;
    NSURL *url=[NSURL URLWithString:@"https://maktoob.yahoo.com"];
    //NSURLRequest *request=[NSURLRequest requestWithURL:url];
    //[self.webView loadRequest:request];
    NSString *str=[[NSString alloc]initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    [_webView loadHTMLString:str baseURL:nil];
}

- (IBAction)asyncBtn:(UIButton *)sender {
    self.webView.delegate=self;
    NSURL *url=[NSURL URLWithString:@"https://maktoob.yahoo.com"];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    NSURLConnection *connection =[[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
    [_webView loadRequest:request];

   
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceiveResponse \n");
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("didReceiveData \n");
    //NSString *str=[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
   // [_webView loadHTMLString:str baseURL:nil];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
     printf("didFinishLoading \n");
    
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(nonnull NSError *)error{
    printf("didFailWithError \n");
}

@end
