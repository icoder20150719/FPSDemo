//
//  UIApplication+Memory.h
//  Coffee
//
//  Created by icoder on 16/8/10.
//  Copyright © 2016年 icoder. All rights reserved.
//
#import <UIKit/UIKit.h>
@interface UIApplication (Memory)
@property (nonatomic, readonly) double memoryUsed;
@property (nonatomic, readonly) double availableMemory;
@property (nonatomic, readonly) double cpuUsed;
@end
