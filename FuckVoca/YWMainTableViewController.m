//
//  YWMainTableViewController.m
//  FuckVoca
//
//  Created by Yuwei Ba on 8/28/14.
//  Copyright (c) 2014 ___YUWEIBA___. All rights reserved.
//

#import "YWMainTableViewController.h"
#import "YWListItem.h"
#import "YWWordViewController.h"

@interface YWMainTableViewController ()



@end

@implementation YWMainTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.listItems = [[NSMutableArray alloc] init];
    [self loadInitDatas];
    
}


#pragma mark - Table view data source

- (void) loadInitDatas
{
    YWListItem *item1 = [[YWListItem alloc] init];
    item1.listName = @"new List 1new List 1new List 1new List 1new List 1new List 1new List 1new List 1new List 1new List 1";
    item1.vocaCount = 50;
    YWListItem *item2 = [[YWListItem alloc] init];
    item2.listName = @"new List 2";
    item2.vocaCount = 50;
    [self.listItems addObject:item1];
    [self.listItems addObject:item2];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.listItems count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ListPrototypeCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier forIndexPath:indexPath];
    
    YWListItem *listItem = [self.listItems objectAtIndex:indexPath.row];
    UILabel *listName = (UILabel *)[cell viewWithTag:100];
    listName.text = listItem.listName;
    UILabel *vocaCount = (UILabel *)[cell viewWithTag:101];
    vocaCount.text = [@(listItem.vocaCount) stringValue];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"firstSegue" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    YWWordViewController *vc = [[segue destinationViewController] viewControllers][0];
    NSUInteger index = [[self.tableView indexPathForSelectedRow] row];
    vc.listItem = [self.listItems objectAtIndex:index];
}

@end
