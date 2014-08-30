//
//  MainViewController.m
//  FuckVoca
//
//  Created by Yuwei Ba on 8/28/14.
//  Copyright (c) 2014 ___YUWEIBA___. All rights reserved.
//

#import "MainViewController.h"
#import "YWListItem.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.listItems = [[NSMutableArray alloc] init];
}

- (NSString *) segueIdentifierForIndexPathInLeftMenu:(NSIndexPath *)indexPath
{
    return @"firstSegue";
}

- (void) configureLeftMenuButton:(UIButton *)button
{
    CGRect frame = button.frame;
    frame.origin = (CGPoint){0, 0};
    frame.size = (CGSize){40, 40};
    button.frame = frame;
    
    [button setImage:[UIImage imageNamed:@"icon-menu"] forState:UIControlStateNormal];
}

- (CGFloat) leftMenuWidth
{
    return 180;
}

@end
