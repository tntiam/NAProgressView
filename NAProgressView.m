//
//  NAProgressView.m
//  ConvertSwiftToObjectiveC
//
//  Created by Tran Trong Nghia on 5/7/16.
//  Copyright © 2016 Tran Trong Nghia. All rights reserved.
//

#import "NAProgressView.h"

@interface NAProgressView()
@property (strong, nonatomic) UIView *progressView;
@end

@implementation NAProgressView

#pragma mark - INIT
- (void)awakeFromNib {
    [self createTrackImageView];
    [self createPorgressView];
    [self createProgressImageView];
    [self createValues];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.trackImageView.frame = ({
        CGRect rect = self.trackImageView.frame;
        rect.size.width = CGRectGetWidth(self.bounds);
        rect.size.height = CGRectGetHeight(self.bounds);
        rect;
    });
    
    self.progressImageView.frame = ({
        CGRect rect = self.progressImageView.frame;
        rect.size.width = CGRectGetWidth(self.bounds);
        rect.size.height = CGRectGetHeight(self.bounds);
        rect;
    });
    
    self.progress = self.progress;
}

- (void)createTrackImageView {
    _trackImageView = [[UIImageView alloc] initWithFrame:self.bounds];
    [self addSubview:_trackImageView];
}

- (void)createPorgressView {
    _progressView = [[UIView alloc] initWithFrame:CGRectZero];
    [self addSubview:_progressView];
}

- (void)createProgressImageView {
    _progressImageView = [[UIImageView alloc] initWithFrame:self.bounds];
    [self.progressView addSubview:_progressImageView];
}

- (void)createValues {
    self.trackColor = [UIColor lightGrayColor];
    self.progressColor = [UIColor greenColor];
}

#pragma mark - PROPERTY
- (void)setProgress:(CGFloat)progress {
    _progress = progress;
    CGFloat maxWidth = CGRectGetWidth(self.bounds);
    CGFloat currentWidth = _progress * maxWidth;
    self.progressView.frame = ({
        CGRect rect = self.progressView.frame;
        rect.size.width = currentWidth;
        rect.size.height = CGRectGetHeight(self.bounds);
        rect;
    });
}

- (void)setTrackColor:(UIColor *)trackColor {
    _trackColor = trackColor;
    self.backgroundColor = _trackColor;
}

- (void)setProgressColor:(UIColor *)progressColor {
    _progressColor = progressColor;
    self.progressView.backgroundColor = _progressColor;
}

#pragma mark - PRIVATE METHOD

#pragma mark - PUBLISH METHOD


@end
