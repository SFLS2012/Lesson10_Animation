//
//  ViewController.m
//  Lesson10_Animation
//
//  Created by 朱 皓斌 on 12-12-18.
//  Copyright (c) 2012年 朱 皓斌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize newlyImageView;
- (void)viewDidLoad
{
    newlyImageView=[[UIImageView alloc]initWithFrame:CGRectMake(135, 100, 50, 50)];
    newlyImageView.backgroundColor=[UIColor redColor];
    [self.view addSubview:newlyImageView];
    
    UIButton *leftButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    leftButton.frame=CGRectMake(120, 200, 80, 40);
    [leftButton setTitle:@"左移" forState:UIControlStateNormal];
    [leftButton addTarget:self action:@selector(moveLeft) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:leftButton];
    
    UIButton *rightButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    rightButton.frame=CGRectMake(120, 260, 80, 40);
    [rightButton setTitle:@"右移" forState:UIControlStateNormal];
    [rightButton addTarget:self action:@selector(moveRight) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:rightButton];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)moveLeft
{
    NSLog(@"left");
    newlyImageView.frame=CGRectMake(newlyImageView.frame.origin.x-1, newlyImageView.frame.origin.y, newlyImageView.frame.size.width, newlyImageView.frame.size.height);
}
-(void)moveRight
{
    NSLog(@"right");
    newlyImageView.frame=CGRectMake(newlyImageView.frame.origin.x+1, newlyImageView.frame.origin.y, newlyImageView.frame.size.width, newlyImageView.frame.size.height);
}
@end
