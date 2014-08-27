//
//  YWToDoItem.h
//  FuckVoca
//
//  Created by Yuwei Ba on 8/26/14.
//  Copyright (c) 2014 ___YUWEIBA___. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YWToDoItem : NSObject {
    int _uid;
    NSString *_itemName;
    BOOL _completed;
    NSDate *_creationDate;
}

@property (nonatomic, assign) int uid;
@property (nonatomic, copy) NSString *itemName;
@property (nonatomic)BOOL completed;
@property (nonatomic, readonly) NSDate *creationDate;

- (id) initWithUID: (int) uid name:(NSString *) itemName completed: (BOOL) completed
      creationTime: (NSData *) creationDate;

@end
