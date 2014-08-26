//
//  YWToDoItem.h
//  FuckVoca
//
//  Created by Yuwei Ba on 8/26/14.
//  Copyright (c) 2014 ___YUWEIBA___. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YWToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
