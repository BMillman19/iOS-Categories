//
//  NSMutableArray+QueueAdditions.h
//  MoodSwing
//
//  Created by Brandon Millman on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSMutableArray (QueueAdditions)

- (id)dequeue;
- (void)enqueue:(id)obj;

@end