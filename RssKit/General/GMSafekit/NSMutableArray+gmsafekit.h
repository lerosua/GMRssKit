//
//  NSMutableArray+gmsafekit.h
//  testBaidu
//
//  Created by lerosua on 14-5-23.
//  Copyright (c) 2014年 lerosua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (gmsafekit)
- (id) safeObjectAtIndex:(NSUInteger)index;
- (void)safeAddObject:(id)anObject;
- (void)safeInsertObject:(id)anObject atIndex:(NSUInteger)index;
- (void)safeRemoveObjectAtIndex:(NSUInteger)index;
- (void)safeReplaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;

@end
