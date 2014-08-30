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
@property (weak, nonatomic) IBOutlet UILabel *wordMean;

@end

@implementation YWWordViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setViewContent];
    [self setContentViewLayout];
}

- (void) setContentViewLayout
{
    [self setLabelAutozie:self.wordName];
    [self setLabelAutozie:self.wordMean];
}
- (void) setLabelAutozie: (UILabel *) label
{
    [label setNumberOfLines:0];
    NSString *s = label.text;
    UIFont *font = label.font;
    CGSize size = CGSizeMake(320,2000);
    NSDictionary *tdic = [NSDictionary dictionaryWithObjectsAndKeys:font, NSFontAttributeName, nil];
    CGSize actualSize = [s boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:tdic context:nil].size;
    label.frame = CGRectMake(10, 20, actualSize.width, actualSize.height);
}

- (void) setViewContent
{
    if (!self.listItem)
        return;
    self.wordName.text = self.listItem.listName;
    self.wordMean.text = [@(self.listItem.vocaCount) stringValue];
}

@end
