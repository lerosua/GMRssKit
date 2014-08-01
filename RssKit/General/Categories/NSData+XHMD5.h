//
//  NSData+XHMD5.h
//  YoGame-ios
//
//  Created by 曾 宪华 on 14-7-26.
//  Copyright (c) 2014年 曾宪华 QQ群: (142557668) QQ:543413507  Gmail:xhzengAIB@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (XHMD5)

+ (NSData *)MD5Digest:(NSData *)input;
- (NSData *)MD5Digest;

+ (NSString *)MD5HexDigest:(NSData *)input;
- (NSString *)MD5HexDigest;

@end
