//
//  BGLoopView.h
//
//  Created by BG on 16/6/14.
//  Copyright © 2016年 BG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BGLoopView : UIView
/**
 *  根据图片数组和标题数组初始化图片轮播器
 *
 *  @param URLs   图片数组
 *  @param titles 标题数组
 *
 *  @return 图片轮播器
 */
- (instancetype)initWithURLs:(NSArray <NSString *> *)URLs titles:(NSArray <NSString *> *)titles didSelected:(void (^)(NSInteger index))didSelected;
/**
 *  定时器时间间隔
 */
@property (nonatomic, assign) NSInteger timerInterval;
/**
 *  是否开启定时器:默认是开启的
 */
@property (nonatomic, assign) BOOL enableTimer;

/**
 *  图片数组
 */
@property (nonatomic, strong) NSArray *URLs;
/**
 *  标题数组
 */
@property (nonatomic, strong) NSArray *titles;

@property (nonatomic, copy) void (^didSelected)(NSInteger index);

@end
