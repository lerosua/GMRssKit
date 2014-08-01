//
//  NSObject+gmsafekit.h
//  testBaidu
//
//  Created by lerosua on 14-5-23.
//  Copyright (c) 2014年 lerosua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (gmsafekit)
- (id)safePerformSelector:(SEL)aSelector;
-(id)safePerformSelector:(SEL)aSelector withObject:(id)object;
-(id)safePerformSelector:(SEL)aSelector withObject:(id)object1 withObject:(id)object2;
@end
