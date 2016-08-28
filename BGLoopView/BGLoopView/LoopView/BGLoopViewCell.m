//
//  BGLoopViewCell.m
//
//  Created by BG on 16/6/14.
//  Copyright © 2016年 BG. All rights reserved.
//

#import "BGLoopViewCell.h"
#import "UIImageView+WebCache.h"

@interface BGLoopViewCell()

@property (nonatomic, strong) UIImageView *iconView;
@end

@implementation BGLoopViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.iconView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.iconView];
    }
    return self;
}

- (void)setURL:(NSURL *)URL {
    _URL = URL;
    [self.iconView sd_setImageWithURL:URL];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.iconView.frame = self.bounds;
}

@end
