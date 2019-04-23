//
//  ViewController.m
//  AnimatedBall
//
//  Created by JETS Mobile Lab -  on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *ball;
@property Boolean flag;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _flag=false;
    _ball.layer.cornerRadius=25;
    _ball.layer.borderColor=[UIColor blackColor].CGColor;
    _ball.layer.borderWidth=1;
    _animator=[[UIDynamicAnimator alloc]initWithReferenceView:self.view];
    [self animation];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)animation{
    UIGravityBehavior *gravity=[[UIGravityBehavior alloc]initWithItems:@[_ball]];
    [_animator addBehavior:gravity];
    UICollisionBehavior *collision=[[UICollisionBehavior alloc]initWithItems:@[_ball]];
    [collision setTranslatesReferenceBoundsIntoBoundary:YES];
    collision.collisionDelegate=self;
    [_animator addBehavior:collision];
    UIDynamicItemBehavior *item=[[UIDynamicItemBehavior alloc]initWithItems:@[_ball]];
    item.elasticity=0.75;
    item.resistance=0.5;
    [_animator addBehavior:item];
}
-(void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(nonnull id<UIDynamicItem>)item withBoundaryIdentifier:(nullable id<NSCopying>)identifier{
    if(_flag==false){
        _ball.backgroundColor=UIColor.blackColor;
        _flag=true;
    }
    else if(_flag==true){
        _ball.backgroundColor=UIColor.blueColor;
        _flag=false;
    }
}

@end
