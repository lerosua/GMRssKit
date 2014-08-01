//
//  NSMutableArray+gmsafekit.m
//  testBaidu
//
//  Created by lerosua on 14-5-23.
//  Copyright (c) 2014年 lerosua. All rights reserved.
//

#import "NSMutableArray+gmsafekit.h"

@implementation NSMutableArray (gmsafekit)

-(id) safeObjectAtIndex:(NSUInteger)index
{
    if (index>=self.count) {
        NSLog(@"safeWarning -- NSArray get error index");
        return nil;
    }
    return [self objectAtIndex:index];
}

-(void)safeAddObject:(id)anObject
{
    if (!anObject) {
        //        [[SafeKitLog shareInstance]logWarning:@"object is nil"];
        NSLog(@"safeWarning --addObject: NSMUtableArray add nil object");
        return;
    }
    [self addObject:anObject];
}

- (void)safeInsertObject:(id)anObject atIndex:(NSUInteger)index
{
    if (index > [self count]) {
        NSLog(@"%@" , [NSString stringWithFormat:@"safeWarning --insertObject: index[%ld] > count[%ld]",(long)index ,(long)[self count]]);
        return;
    }
    if (!anObject) {
        NSLog(@"safeWarning --insertObject: object is nil");
        return;
    }
    [self insertObject:anObject atIndex:index];
}
- (void)safeRemoveObjectAtIndex:(NSUInteger)index
{
    if (index >= [self count]) {
        NSLog(@"%@" , [NSString stringWithFormat:@"safeWarning --removeObjectAtIndex: index[%ld] >= count[%ld]",(long)index ,(long)[self count]]);
        return;
    }
    
    return [self removeObjectAtIndex:index];
}
- (void)safeReplaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject
{
    if (index >= [self count]) {
        NSLog(@"%@" , [NSString stringWithFormat:@"safeWarning --replaceObjectAtIndex: index[%ld] >= count[%ld]",(long)index ,(long)[self count]]);
        return;
    }
    if (!anObject) {
        NSLog(@"safeWarning --replaceObjectAtIndex: object is nil");
        return;
    }
    [self replaceObjectAtIndex:index withObject:anObject];
}
@end
