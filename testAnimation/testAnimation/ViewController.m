//
//  ViewController.m
//  testAnimation
//
//  Created by 紫冬 on 13-9-14.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize firstViewController = _firstViewController;
@synthesize secondViewController = _secondViewController;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    FirstViewController *aFirstViewController = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    self.firstViewController = aFirstViewController;
    [self.view insertSubview:self.firstViewController.view atIndex:0];
    [aFirstViewController release];
    aFirstViewController = nil;
}

-(IBAction)switchViews:(id)sender
{
    [UIView beginAnimations:@"View Flip" context:nil];  //开始一个动画，给该动画命名。
    [UIView setAnimationDuration:1.25];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    if (self.secondViewController.view == nil)  //如果第二个viewcontroller.view是nil，那么显示第二个
    {
        if (self.secondViewController == nil)
        {
            self.secondViewController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
        }
        
        [UIView setAnimationTransition: UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];  //为该view的显示，设置特定动画
        
        [self.firstViewController.view removeFromSuperview];
        [self.view insertSubview:self.secondViewController.view atIndex:0];
    }
    else
    {
        if (self.firstViewController == nil)
        {
            self.firstViewController = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
        }
        
        [UIView setAnimationTransition: UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
        [self.secondViewController.view removeFromSuperview];
        [self.view insertSubview:self.firstViewController.view atIndex:0];
    }
    
    [UIView commitAnimations];  //提交动画，开始播放
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
