//
//  ENTableFooterActivityView.h
//  ENTableFooterActivityIndicator
//
//  Created by Evgeny on 20.12.14.
//  Copyright (c) 2014 Evgeny Nazarov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ENFooterActivityIndicatorView : UIView
- (instancetype)initWithHeight:(CGFloat)height;
+ (instancetype)activityIndicatorWithHeight:(CGFloat)height;
- (void)updateForTableBottomOffset:(CGFloat)offset;
@end
