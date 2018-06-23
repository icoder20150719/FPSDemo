//
//  ICFPSWindow.m
//  Coffee
//
//  Created by icoder on 16/8/3.
//  Copyright © 2016年 icoder. All rights reserved.
//
#import "ICFPSWindow.h"
@implementation ICFPSWindow
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        /**
         Window level will determine how on top we want to appear in window hierarchy.
         We do not want to hide alerts, but we want to be pretty much above everything else.
         */
        self.windowLevel = UIWindowLevelStatusBar + 100;
    }
    return self;
}
@end
