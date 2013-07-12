//
//  ViewController.h
//  BlurView
//
//  Created by 舒 方昊 on 13-7-6.
//  Copyright (c) 2013年 舒 方昊. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlurView.h"

@interface ViewController : UIViewController
{
    bool is_selected;
    UIImage * current_view_img;
}

/*
 将要被模糊的界面
 */
@property (retain, nonatomic) IBOutlet BlurView *blurView;
- (IBAction)btnTouched:(id)sender;
/*
 用来展示模糊图片的image view
 */
@property (retain, nonatomic) IBOutlet UIImageView *imageView;

@end
