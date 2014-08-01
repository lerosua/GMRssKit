//
//  RSSParser.h
//  RSSParser
//
//  Created by Thibaut LE LEVIER on 1/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFXMLRequestOperation.h"
#import "RSSItem.h"

#define kRSSCacheKey    @"kRSSCacheKey"

@interface RSSParser : AFXMLRequestOperation <NSXMLParserDelegate> {
    RSSItem *currentItem;
    NSMutableArray *items;
    NSMutableString *tmpString;
    void (^block)(NSArray *feedItems);
}


+ (void)parseRSSFeedWith:(NSString *)rssSource
                 success:(void (^)(NSArray *feedItems))success
                 failure:(void (^)(NSError *error))failure;

+ (void)parseRSSFeedForRequest:(NSURLRequest *)urlRequest
                       success:(void (^)(NSArray *feedItems))success
                       failure:(void (^)(NSError *error))failure;

- (void)parseRSSFeedForRequest:(NSURLRequest *)urlRequest
                       success:(void (^)(NSArray *feedItems))success
                       failure:(void (^)(NSError *error))failure;

+ (void) RSSSaveToCache:(NSArray *) feedItems;
+ (NSArray *)RSSLoadCache;

@end