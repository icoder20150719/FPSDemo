//
//  MemoryWave.m
//  MemoryProgress
//
//  Created by xiongan on 2017/11/15.
//  Copyright © 2017年 xiongan. All rights reserved.
//
#import "ICMemoryWave.h"
#import <UIKit/UIKit.h>
#import "ICMemoryWaveController.h"
@implementation ICMemoryWave
static ICMemoryWave *window;
+ (void)show {
    if (window) {
        window.hidden = NO;
        [window.rootViewController viewWillAppear:NO];
        return;
    }
    CGSize size = [UIScreen mainScreen].bounds.size;
    CGFloat randomX = arc4random() % 10 / 10.0;
    CGFloat randomY = arc4random() % 10 / 10.0;
    window = [[ICMemoryWave alloc]initWithFrame:CGRectMake((size.width-100)*randomX,(size.height - 100 )*randomY, 100, 100)];
    window.backgroundColor = [UIColor clearColor];
    window.hidden = NO;
    window.windowLevel = UIWindowLevelStatusBar + 1000;
    ICMemoryWaveController *vc = [[ICMemoryWaveController alloc]init];
    vc.view.frame = window.bounds;
    window.rootViewController = vc;
}
+ (void)hide {
    window.hidden = YES;
}
static CGPoint touchBeganPoint;
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    touchBeganPoint = point;
}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
        UITouch *touch = [touches anyObject];
        CGPoint point = [touch locationInView:self];
        self.center = CGPointMake(self.center.x - (touchBeganPoint.x - point.x), self.center.y - (touchBeganPoint.y - point.y));
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    touchBeganPoint = CGPointZero;
}
- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    touchBeganPoint = CGPointZero;
}
@end
