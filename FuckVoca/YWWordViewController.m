//
//  YWWordViewController.m
//  FuckVoca
//
//  Created by Yuwei Ba on 8/30/14.
//  Copyright (c) 2014 ___YUWEIBA___. All rights reserved.
//

#import "YWWordViewController.h"
#import "YWMainTableViewController.h"
#import "YWListItem.h"

@interface YWWordViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordName;

@end

@implementation YWWordViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)unwindWordView:(UIStoryboardSegue *)segue
{
    YWMainTableViewController *source = [segue sourceViewController];
    YWListItem *listItem = [source.listItems objectAtIndex:source.selectedIndex];
    self.wordName.text = listItem.listName;
}

@end
