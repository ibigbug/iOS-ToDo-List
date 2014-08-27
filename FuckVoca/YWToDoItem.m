//
//  YWToDoItem.m
//  FuckVoca
//
//  Created by Yuwei Ba on 8/26/14.
//  Copyright (c) 2014 ___YUWEIBA___. All rights reserved.
//

#import "YWToDoItem.h"

@implementation YWToDoItem

@synthesize uid = _uid;
@synthesize itemName = _itemName;
@synthesize completed = _completed;
@synthesize creationDate = _creationDate;

- (id) initWithUID:(int)uid name:(NSString *)itemName completed:(BOOL)completed creationTime:(NSData *)creationDate
{
    if ((self = [super init])) {
        self.uid = uid;
        self.itemName = itemName;
        self.completed = completed;
    }
    
    return self;
}

@end
