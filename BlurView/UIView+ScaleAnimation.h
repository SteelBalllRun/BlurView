//
//  UIView+ScaleAnimation.h
//  BlurView
//
//  Created by 舒 方昊 on 13-7-6.
//  Copyright (c) 2013年 舒 方昊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ScaleAnimation)
-(void)scarleAnimation:(bool)is_Zoom isCompletion:(void (^)(BOOL finished))_block;
@end
