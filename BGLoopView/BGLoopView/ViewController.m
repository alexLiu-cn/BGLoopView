//
//  ViewController.m
//  BGLoopView
//
//  Created by apple on 8/28/16.
//  Copyright © 2016 bingo. All rights reserved.
//

#import "ViewController.h"
#import "BGLoopView.h"
@interface ViewController ()

@property (nonatomic, strong) BGLoopView *loopView;
@property (nonatomic, strong) NSArray *images;
@property (nonatomic, strong) NSArray *titles;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self loopViewData];
    
    [self.view addSubview:self.loopView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//轮播器数据
- (void)loopViewData{
    self.images = @[
                    @"http://img1.100ye.com/img2/4/1135/1463/10703963/msgpic/60962569.jpg",
                    @"http://file.chnsourcing.com.cn/2014/10/14145606799828.jpg",
                    @"http://img1.gtimg.com/cul/pics/hv1/23/196/1874/121906853.jpg",
                    @"http://img170.ph.126.net/qDX_8CvkHys1bsTPRZtlKA==/2285576810891958709.jpg"
                    ];
    self.titles = @[@"热门医生",@"热门医生",@"脑瘫公益活动",@"热门医生"];
}


- (BGLoopView *)loopView{
    if (!_loopView) {
        // 获得新闻图片数组
        // 获得标题数组
        _loopView = [[BGLoopView alloc] initWithURLs:self.images titles:self.titles didSelected:^(NSInteger index) {
            NSLog(@"点击了 第%zd ✌️",index);
        }];
        // 设置frame
        _loopView.frame = self.view.bounds;
    }
    
    return _loopView;
    
}


@end
