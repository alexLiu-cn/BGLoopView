//
//  BGWeakTimerTargetObj.m
//  08-定时器的坑
//
//  Created by BG on 16/6/10.
//  Copyright © 2016年 BG. All rights reserved.
//

#import "BGWeakTimerTargetObj.h"

@interface BGWeakTimerTargetObj()

@property (nonatomic, weak) id aTarget;
@property (nonatomic, assign) SEL aSelector;
@end
/**
 *  该类的作用是用来接管定时器的强引用
 */
@implementation BGWeakTimerTargetObj

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo {
    
    // 创建当前类对象
    BGWeakTimerTargetObj *obj = [[BGWeakTimerTargetObj alloc] init];
    obj.aTarget = aTarget; // 控制器
    obj.aSelector = aSelector; // 控制器的update方法
    
    return [NSTimer scheduledTimerWithTimeInterval:ti target:obj selector:@selector(update:) userInfo:userInfo repeats:yesOrNo];
}

- (void)update:(NSTimer *)timer {
//    NSLog(@"%s", __FUNCTION__);
    [self.aTarget performSelector:self.aSelector withObject:timer];
}
@end
