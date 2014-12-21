//
//  UITableViewController+ENFooterActivityIndicatorView.h
//  ENTableFooterActivityIndicator
//
//  Created by Evgeny on 21.12.14.
//  Copyright (c) 2014 Evgeny Nazarov. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ENTableScrolledDownBlock)(void);

@class ENFooterActivityIndicatorView;
@interface UITableViewController (ENFooterActivityIndicatorView)
@property (nonatomic, copy) ENTableScrolledDownBlock tableScrolledDownBlock;
- (void)addFooterActivityIndicatorWithHeight:(CGFloat)height;
- (void)removeFooterActivityIndicator;
- (void)tableViewDidScroll;
- (ENFooterActivityIndicatorView *)footerActivityIndicatorView;
@end
