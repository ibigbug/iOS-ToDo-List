//
//  YWMainTableViewController.h
//  FuckVoca
//
//  Created by Yuwei Ba on 8/28/14.
//  Copyright (c) 2014 ___YUWEIBA___. All rights reserved.
//

#import "AMSlideMenuLeftTableViewController.h"

@interface YWMainTableViewController : AMSlideMenuLeftTableViewController <UITableViewDataSource, UITableViewDelegate>

@property NSMutableArray *listItems;
@property NSInteger selectedIndex;

@end
