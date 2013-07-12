//
//  UIView+ScaleAnimation.m
//  BlurView
//
//  Created by 舒 方昊 on 13-7-6.
//  Copyright (c) 2013年 舒 方昊. All rights reserved.
//

#import "UIView+ScaleAnimation.h"

@implementation UIView (ScaleAnimation)
- (void)scarleAnimation:(bool)is_Zoom isCompletion:(void (^)(BOOL))_block
{
    if (is_Zoom) {
        [UIView animateWithDuration:0.3f
                         animations:^(void){
                             CGAffineTransform transform=CGAffineTransformScale(self.transform, 1.15, 1.15);
                             [self setTransform:transform];
                             self.alpha = 1;
                         }
                         completion:_block];
        return;
    }
    [UIView animateWithDuration:0.3f
                     animations:^(void){
                         CGAffineTransform transform=CGAffineTransformScale(self.transform, 0.85, 0.85);
                         [self setTransform:transform];
                         self.alpha=0.8;
                     }
                     completion:_block];
}
@end
