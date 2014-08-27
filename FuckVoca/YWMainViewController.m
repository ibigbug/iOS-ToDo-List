//
//  YWMainViewController.m
//  FuckVoca
//
//  Created by Yuwei Ba on 8/27/14.
//  Copyright (c) 2014 ___YUWEIBA___. All rights reserved.
//

#import "YWMainViewController.h"
#import "YWListItem.h"

@interface YWMainViewController ()



@property (weak, nonatomic) IBOutlet UILabel *wordLabel;
@property (weak, nonatomic) IBOutlet UILabel *explanationLabel;

@property NSMutableArray *listDatas;

@end

@implementation YWMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.listDatas = [[NSMutableArray alloc] init];
    [self loadInitData];
    [self.sideBarTable setDataSource:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (void) loadInitData
{
    YWListItem *item1 = [[YWListItem alloc] init];
    item1.listName = @"List 1";
    item1.vocaCount = 50;
    YWListItem *item2 = [[YWListItem alloc] init];
    item2.listName = @"List 2";
    item2.vocaCount = 50;
    [self.listDatas addObject:item1];
    [self.listDatas addObject:item2];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSLog(@"in me");
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"in me");
    return [self.listDatas count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ListPrototypeCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier forIndexPath:indexPath];
    
    YWListItem *listItem = [self.listDatas objectAtIndex:indexPath.row];
    cell.textLabel.text = listItem.listName;
    cell.detailTextLabel.text = [@(listItem.vocaCount) stringValue];
    
    return cell;
}

- (void) tableView:(UITableView *) tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}

@end
