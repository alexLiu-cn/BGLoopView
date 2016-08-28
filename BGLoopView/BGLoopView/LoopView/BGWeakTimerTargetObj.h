//
//  BGWeakTimerTargetObj.h
//  08-定时器的坑
//
//  Created by BG on 16/6/10.
//  Copyright © 2016年 BG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BGWeakTimerTargetObj : NSObject

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo;
@end
