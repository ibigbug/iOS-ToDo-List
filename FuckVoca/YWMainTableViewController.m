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


- (void) loadInitDatas
{
    NSString *ROOT_URL = @"http://baidu.com";
    NSURLRequest *req = [NSURLRequest requestWithURL:[NSURL URLWithString:ROOT_URL]];
    NSURLConnection *conn = [NSURLConnection connectionWithRequest:req delegate:self];
    
    if (!conn) {
        NSLog(@"Request failed");
    }
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


#pragma mark NSURLConnection Delegate Methods

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    // A response has been received, this is where we initialize the instance var you created
    // so that we can append data to it in the didReceiveData method
    // Furthermore, this method is called each time there is a redirect so reinitializing it
    // also serves to clear it
    self.responseData = [[NSMutableData alloc] init];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    // Append the new data to the instance variable you declared
    [self.responseData appendData:data];
}

- (NSCachedURLResponse *)connection:(NSURLConnection *)connection
                  willCacheResponse:(NSCachedURLResponse*)cachedResponse {
    // Return nil to indicate not necessary to store a cached response for this connection
    return nil;
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"%@", self.responseData);
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"%@", error);
}


@end
