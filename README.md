ENFooterActivityIndicatorView
=============================

UITableView's footer activity indicator

##Demo
![](http://i.imgur.com/EVpes91.gif)

##What it does
* Add an activity indicator view to your table view
* Handle when it scrolls to the bottom

##How to use
1. Import UITableViewController's category to your table view controller
```objc
#import "UITableViewController+ENFooterActivityIndicatorView.h"
```
2. Set block for handle when table view goes to the bottom in viewDidLoad
```objc
[self setTableScrolledDownBlock:^void() {
        //Put here your data loading logic here
}];
```
3. Use next methods to add or remove footer activity indicator view
```objc
if (![self footerActivityIndicatorView])
        [self addFooterActivityIndicatorWithHeight:80.f];//Add ENFooterActivityIndicatorView to tableView's footer
```
```objc
  [self removeFooterActivityIndicator];
```
4. See example project for more explanation
