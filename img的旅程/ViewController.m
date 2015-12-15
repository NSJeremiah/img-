//
//  ViewController.m
//  img的旅程
//
//  Created by 贺俊毓 on 15/11/16.
//  Copyright © 2015年 NSJeremiah. All rights reserved.
//

#import "ViewController.h"
#define kDelta 20

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)click:(id)sender{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    CGRect newframe = _object.frame;
    NSInteger tag = [sender tag];
    switch (tag) {
        case 1:
            newframe.origin.y -= kDelta;
            break;
        case 2:
            newframe.origin.x -= kDelta;
            break;
        case 3:
            newframe.origin.x += kDelta;
            break;
        case 4:
            newframe.origin.y += 20;
            
        default:
            break;
    }
    
    _object.frame = newframe;
     [UIView commitAnimations];
    
    
}

-(IBAction)rotate:(id)sender{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    if([sender tag] ==1){
    _object.transform = CGAffineTransformRotate(_object.transform, -M_PI_4);
    }
    else if([sender tag]==2){
        _object.transform = CGAffineTransformRotate(_object.transform, M_PI_4);
    }
    [UIView commitAnimations];
}

-(IBAction)big:(id)sender{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    _object.transform = CGAffineTransformScale(_object.transform, 1.5, 1.5);
    _object.transform = CGAffineTransformScale(_object.transform, 0.7, 0.7);
    if([sender tag] ==1){
        _object.transform = CGAffineTransformScale(_object.transform, 1, 1);
    }
    else if([sender tag]==2){
        _object.transform = CGAffineTransformScale(_object.transform, 0.8, 0.8);
    }
    [UIView commitAnimations];
    }



@end
