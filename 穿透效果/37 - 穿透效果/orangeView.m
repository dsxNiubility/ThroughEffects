//
//  orangeView.m
//  37 - 穿透效果
//
//  Created by 董 尚先 on 14-12-26.
//  Copyright (c) 2014年 itheima. All rights reserved.
//

#import "orangeView.h"

@implementation orangeView

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    CGPoint new = [self convertPoint:point toView:_btnn];
    if ([_btnn pointInside:new withEvent:event]) {
        return NO;
    }else{
        return [super pointInside:point withEvent:event];
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s",__func__);
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *tou = [touches anyObject];
    CGPoint now = [tou locationInView:self];
    CGPoint pre = [tou previousLocationInView:self];
    
    CGFloat offsetX = now.x - pre.x;
    CGFloat offsetY = now.y - pre.y;
    
    CGRect frame = self.frame;
    frame.origin.x = frame.origin.x + offsetX;
    frame.origin.y = frame.origin.y + offsetY;
    self.frame = frame;
}
@end
