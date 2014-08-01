//
//  NSArray+gmsafekit.m
//  testBaidu
//
//  Created by lerosua on 14-5-23.
//  Copyright (c) 2014年 lerosua. All rights reserved.
//

#import "NSArray+gmsafekit.h"

@implementation NSArray (gmsafekit)
-(id) safeObjectAtIndex:(NSUInteger)index
{
    if (index>=self.count) {
        NSLog(@"safeWarning -- NSArray get error index");
        return nil;
    }
    return [self objectAtIndex:index];
}
@end
