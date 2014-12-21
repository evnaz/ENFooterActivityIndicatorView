//
//  TableViewController.m
//  ENTableFooterActivityIndicator
//
//  Created by Evgeny on 20.12.14.
//  Copyright (c) 2014 Evgeny Nazarov. All rights reserved.
//

#import "TableViewController.h"
#import "UITableViewController+ENFooterActivityIndicatorView.h"

@interface TableViewController ()
@property (nonatomic, assign) BOOL isLoading;
@property (nonatomic, assign) NSInteger rowsCount;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //This block runs when the table view scrolled to the bottom
    __weak typeof(self) weakSelf = self; //Don't forget to make weak pointer to self
    [self setTableScrolledDownBlock:^void() {
        //Put here your data loading logic
        if (!weakSelf.isLoading)
            [weakSelf loadNextBatch];
    }];
    
    _rowsCount = 0;
    
    
    UIBarButtonItem *refreshBarButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(refreshPressed:)];
    self.navigationItem.rightBarButtonItem = refreshBarButton;
    
    [self loadNextBatch];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Data loading logic
- (void)loadNextBatch {
    _isLoading = YES;
    if (![self footerActivityIndicatorView])
        [self addFooterActivityIndicatorWithHeight:80.f];//Add ENFooterActivityIndicatorView to tableView's footer
    
    if (_rowsCount < 60)
        [self performSelector:@selector(addNewData) withObject:nil afterDelay:3.3333];// I've made a little delay to imitate data loading
    else
        [self removeFooterActivityIndicator];
}

- (void)addNewData {
    _rowsCount +=15;
    _isLoading = NO;
    [self.tableView reloadData];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return _rowsCount;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellID = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellID];
    if (!cell)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellID];
    
    [cell.textLabel setText:[NSString stringWithFormat:@"row #%li", (long)indexPath.row+1]];
    
    return cell;
}


/*
#pragma mark - UIScrollView Delegate Methods
//If you need to use this method in your view controller, call super
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
 
    [super scrollViewDidScroll:scrollView];
    
    // Your code here ..
}
*/

#pragma mark - Event handlers
- (void)refreshPressed:(id)sender {
    //Clear loaded data
    _rowsCount = 0;
    [self.tableView reloadData];
    [self loadNextBatch];
}


@end
