//
//  YWDBEngine.m
//  FuckVoca
//
//  Created by Yuwei Ba on 8/27/14.
//  Copyright (c) 2014 ___YUWEIBA___. All rights reserved.
//

#import "YWDBEngine.h"

@implementation YWDBEngine

@synthesize uid = _uid;
@synthesize itemName = _itemName;
@synthesize completed = _completed;
@synthesize creationDate = _creationDate;

- (id) initWithUid:(int)uid itemName:(NSString *)itemName completed:(BOOL)completed creationDate:(NSDate *)creationDate
{
    if ((self = [super init])) {
        self.uid = uid;
        self.itemName = itemName;
        self.completed = completed;
        self.creationDate = creationDate;
    }
    
    return self;
}

@end
