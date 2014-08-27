//
//  YWMainViewController.h
//  FuckVoca
//
//  Created by Yuwei Ba on 8/27/14.
//  Copyright (c) 2014 ___YUWEIBA___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YWMainViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *sideBarTable;

@end
