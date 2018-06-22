//
//  UIApplication+Memory.h
//  Coffee
//
//  Created by xiongan on 16/8/10.
//  Copyright © 2016年 承道科技. All rights reserved.
//
#import <UIKit/UIKit.h>
@interface UIApplication (Memory)
@property (nonatomic, readonly) double memoryUsed;
@property (nonatomic, readonly) double availableMemory;
@property (nonatomic, readonly) double cpuUsed;
@end
