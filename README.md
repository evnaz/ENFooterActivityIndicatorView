ENFooterActivityIndicatorView
=============================

UITableView's footer activity indicator

##Demo
![](http://i.imgur.com/EVpes91.gif)

##What it does

* Add an activity indicator view to your table view
* Handle when it scrolls to the bottom

##How to use

1. Import UITableViewController's category to your table view controller:

        #import "UITableViewController+ENFooterActivityIndicatorView.h"

1. Set block for handle when table view goes to the bottom in viewDidLoad:
 
        [self setTableScrolledDownBlock:^void() {
                //Put here your data loading logic here
        }];

1. Use next methods to add or remove footer activity indicator view:

        if (![self footerActivityIndicatorView])
                [self addFooterActivityIndicatorWithHeight:80.f];//Add ENFooterActivityIndicatorView to tableView's footer
        [self removeFooterActivityIndicator]; // Removes tableView's footer view
        
1. See example project for more explanation.
