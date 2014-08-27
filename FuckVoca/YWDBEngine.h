//
//  YWDBEngine.h
//  FuckVoca
//
//  Created by Yuwei Ba on 8/27/14.
//  Copyright (c) 2014 ___YUWEIBA___. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YWDBEngine : NSObject {
    int _uid;
    NSString *_itemName;
    BOOL _completed;
    NSDate *_creationDate;
}

@property (nonatomic, assign) int uid;
@property (nonatomic, copy) NSString *itemName;
@property (nonatomic) BOOL completed;
@property (nonatomic, copy) NSDate *creationDate;

- (id) initWithUid:(int) uid itemName:(NSString *) itemName completed: (BOOL) completed creationDate: (NSDate *) creationDate;

@end
