ENFooterActivityIndicatorView
=============================

UITableView's footer activity indicator

##Demo
![](http://i.imgur.com/EVpes91.gif)

##What does it do

* Add an activity indicator view for an UITableView
* Handle when it scrolls to the bottom

##How to use

Import UITableViewController's category to your table view controller:
```objective-c
#import "UITableViewController+ENFooterActivityIndicatorView.h"
```
Set block for handle when table view goes to the bottom in viewDidLoad:
```objective-c
[self setTableScrolledDownBlock:^void() {
        //Put here data loading logic
}];
```
Use next methods to add or remove footer activity indicator view:
```objective-c
if (![self footerActivityIndicatorView])
        [self addFooterActivityIndicatorWithHeight:80.f];//Add ENFooterActivityIndicatorView to tableView's footer
```
```objective-c
[self removeFooterActivityIndicator]; // Removes tableView's footer view
```
See example project for more explanation.
