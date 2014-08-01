//
//  GEEntity.m
//  Game5253
//
//  Created by lerosua on 14-6-18.
//  Copyright (c) 2014年 duowan. All rights reserved.
//

#import "RSSEntity.h"
#import <objc/runtime.h>

@implementation RSSEntity

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self) {
        
        unsigned int pCounter = 0;
        objc_property_t *properties = class_copyPropertyList([self class], &pCounter);
        
        for (unsigned int i = 0; i < pCounter; i++)
        {
            objc_property_t prop = properties[i];
            const char *propName = property_getName(prop);
            NSString *pUTF8 = [NSString stringWithUTF8String:propName];
            
            [self setValue:[aDecoder decodeObjectForKey:pUTF8] forKey:pUTF8];
        }
        
        free(properties);
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    unsigned int pCounter = 0;
    objc_property_t *properties = class_copyPropertyList([self class], &pCounter);
    
    for (unsigned int i = 0; i < pCounter; i++)
    {
        objc_property_t prop = properties[i];
        const char *propName = property_getName(prop);
        NSString *pUTF8 = [NSString stringWithUTF8String:propName];
        
        [aCoder encodeObject:[self valueForKey:pUTF8] forKey:pUTF8];
    }
    
    free(properties);
}

@end
