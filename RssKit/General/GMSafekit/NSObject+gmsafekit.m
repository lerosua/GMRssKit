//
//  NSObject+gmsafekit.m
//  testBaidu
//
//  Created by lerosua on 14-5-23.
//  Copyright (c) 2014年 lerosua. All rights reserved.
//

#import "NSObject+gmsafekit.h"

@implementation NSObject (gmsafekit)

- (id)safePerformSelector:(SEL)aSelector{
    if ([self respondsToSelector:aSelector]) {

        if ([self isSelectorReturnType:aSelector]) {
            typedef id (*MethodType)(id, SEL);
            MethodType methodToCall = (MethodType)[self methodForSelector:aSelector];
            return methodToCall(self, aSelector);
        }else{
            typedef void (*MethodType)(id, SEL);
            MethodType methodToCall = (MethodType)[self methodForSelector:aSelector];
            methodToCall(self, aSelector);
            return nil;
        }

    }else{
        NSLog(@"%@",[NSString stringWithFormat:@"[%@ %@] unrecognized selector sent to instance ",[[self class]description],NSStringFromSelector(aSelector)]);
    }
    return nil;
}

-(id)safePerformSelector:(SEL)aSelector withObject:(id)object{
    if ([self respondsToSelector:aSelector]) {
        if ([self isSelectorReturnType:aSelector]) {
            typedef id (*MethodType)(id, SEL, id);
            MethodType methodToCall = (MethodType)[self methodForSelector:aSelector];
            return methodToCall(self, aSelector, object);
        }else{
            typedef void (*MethodType)(id, SEL, id);
            MethodType methodToCall = (MethodType)[self methodForSelector:aSelector];
            methodToCall(self, aSelector, object);
            return nil;
        }
    }else{
        NSLog(@"%@",[NSString stringWithFormat:@"[%@ %@] unrecognized selector sent to instance ",[[self class]description],NSStringFromSelector(aSelector)]);
    }
    return nil;
}

-(id)safePerformSelector:(SEL)aSelector withObject:(id)object1 withObject:(id)object2{
    if ([self respondsToSelector:aSelector]) {

        if ([self isSelectorReturnType:aSelector]) {
            typedef id (*MethodType)(id, SEL, id, id);
            MethodType methodToCall = (MethodType)[self methodForSelector:aSelector];
            return methodToCall(self, aSelector, object1, object2);
        }else{
            typedef void (*MethodType)(id, SEL, id, id);
            MethodType methodToCall = (MethodType)[self methodForSelector:aSelector];
            methodToCall(self, aSelector, object1, object2);
            return nil;
        }

    }else{
        NSLog(@"%@",[NSString stringWithFormat:@"[%@ %@] unrecognized selector sent to instance ",[[self class]description],NSStringFromSelector(aSelector)]);
    }
    return nil;
}

-(BOOL)isSelectorReturnType:(SEL)aSelector{
    NSMethodSignature *signature = [self methodSignatureForSelector:aSelector];
    if (signature) {
        const char *returnType = signature.methodReturnType;
        if (!strcmp(returnType, @encode(void))){
            return NO;
        }else{
            return YES;
        }
    }
    return NO;
}
@end
