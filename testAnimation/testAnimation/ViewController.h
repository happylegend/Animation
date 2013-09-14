//
//  ViewController.h
//  testAnimation
//
//  Created by 紫冬 on 13-9-14.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface ViewController : UIViewController
{
    FirstViewController *_firstViewController;
    SecondViewController *_secondViewController;
}

@property(nonatomic, retain)FirstViewController *firstViewController;
@property(nonatomic, retain)SecondViewController *secondViewController;

-(IBAction)switchViews:(id)sender;

@end
