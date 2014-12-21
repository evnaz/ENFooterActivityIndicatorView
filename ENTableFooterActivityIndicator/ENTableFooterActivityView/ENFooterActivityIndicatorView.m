//
//  ENTableFooterActivityView.m
//  ENTableFooterActivityIndicator
//
//  Created by Evgeny on 20.12.14.
//  Copyright (c) 2014 Evgeny Nazarov. All rights reserved.
//

#import "ENFooterActivityIndicatorView.h"

@interface ENFooterActivityIndicatorView () {
    CGFloat _originalHeight;
}
@property (nonatomic, strong) UIActivityIndicatorView *activityIndicatorView;
@end

@implementation ENFooterActivityIndicatorView

- (instancetype)initWithHeight:(CGFloat)height {
    if (self = [super initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, height)]) {
        _originalHeight = height;
        [self configureView];
        return self;
    }
    
    return nil;
}

- (void)configureView {
    _activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    _activityIndicatorView.center = self.center;
    _activityIndicatorView.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    [self addSubview:_activityIndicatorView];
    [_activityIndicatorView startAnimating];
}

- (void)updateForTableBottomOffset:(CGFloat)offset {
    CGRect newRect = self.frame;
    newRect.size.height = _originalHeight+offset;
    self.frame = newRect;
}

+ (instancetype)activityIndicatorWithHeight:(CGFloat)height {
    return [[[self class] alloc] initWithHeight:height];
}

@end
