//
//  ViewController.m
//  BlurView
//
//  Created by 舒 方昊 on 13-7-6.
//  Copyright (c) 2013年 舒 方昊. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ScaleAnimation.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    is_selected = true;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnTouched:(id)sender {
    is_selected=!is_selected;
    if (is_selected) {
        //放大
        [_imageView setImage:current_view_img];
        [_imageView scarleAnimation:true isCompletion:^(BOOL finished) {
            [_imageView setHidden:true];
            [_blurView setHidden:false];
        }];
    }else
    {
        //缩小
        current_view_img=[_blurView capture];
        [_imageView setImage:current_view_img];
        [_imageView setHidden:false];
        [_blurView setHidden:true];
        [_imageView scarleAnimation:false isCompletion:^(BOOL finished) {
        }];
    }
}
- (void)dealloc {
    [_blurView release];
    [_imageView release];
    [super dealloc];
}
@end
