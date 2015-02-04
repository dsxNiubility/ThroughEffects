//
//  YellowView.m
//  37 - 穿透效果
//
//  Created by 董 尚先 on 14-12-26.
//  Copyright (c) 2014年 itheima. All rights reserved.
//

#import "YellowView.h"

@implementation YellowView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    CGPoint new = [self convertPoint:point toView:_orangeView]; // $$$$$
    
    if ([_orangeView pointInside:new withEvent:event]) {
        return  _orangeView;
    }else{
        return [super hitTest:point withEvent:event];
    }
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    CGPoint new = [self convertPoint:point toView:_btn];
    
    if ([_btn pointInside:new withEvent:event]) {
        return NO;
    }else{
        return [super pointInside:point withEvent:event];
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s",__func__);
}


@end
