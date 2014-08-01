//
//  NSMutableDictionary+gmsafekit.m
//  testBaidu
//
//  Created by lerosua on 14-5-23.
//  Copyright (c) 2014年 lerosua. All rights reserved.
//

#import "NSMutableDictionary+gmsafekit.h"

@implementation NSMutableDictionary (gmsafekit)

- (void)safeRemoveObjectForKey:(id)aKey{
    if (!aKey) {
        NSLog(@"safeWarning -- removeObject key is nil");
        return;
    }
    [self removeObjectForKey:aKey];
}

- (void)safeSetObject:(id)anObject forKey:(id <NSCopying>)aKey{
    if (!anObject) {
        NSLog(@"safeWarning -- setObject object is nil");
        return;
    }
    if (!aKey) {
        NSLog(@"safeWarning -- setObject key is nil");
        return;
    }
    [self setObject:anObject forKey:aKey];
}

@end
