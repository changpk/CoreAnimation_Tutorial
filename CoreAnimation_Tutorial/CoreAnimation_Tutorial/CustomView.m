//
//  CustomView.m
//  CoreAnimation_Tutorial
//
//  Created by sinagame on 16/4/5.
//  Copyright © 2016年 changpengkai. All rights reserved.
//

#import "CustomView.h"

@interface DRInspectionLayer : CALayer
@end

@implementation DRInspectionLayer
- (void)addAnimation:(CAAnimation *)anim forKey:(NSString *)key
{
    NSLog(@"adding animation: %@", [anim debugDescription]);
    [super addAnimation:anim forKey:key];
}
@end

@implementation CustomView

// 每个View都有一个默认的CALayer作为rootLayer用于绘制
+ (Class)layerClass
{
   
    return [DRInspectionLayer class];
}

@end
