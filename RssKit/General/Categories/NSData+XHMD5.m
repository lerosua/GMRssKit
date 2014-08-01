//
//  NSData+XHMD5.m
//  YoGame-ios
//
//  Created by 曾 宪华 on 14-7-26.
//  Copyright (c) 2014年 曾宪华 QQ群: (142557668) QQ:543413507  Gmail:xhzengAIB@gmail.com. All rights reserved.
//

#import "NSData+XHMD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSData (XHMD5)

+ (NSData *)MD5Digest:(NSData *)input {
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(input.bytes, input.length, result);
    return [[NSData alloc] initWithBytes:result length:CC_MD5_DIGEST_LENGTH];
}

- (NSData *)MD5Digest {
    return [NSData MD5Digest:self];
}

+ (NSString *)MD5HexDigest:(NSData *)input {
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(input.bytes, input.length, result);
    NSMutableString *ret = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH*2];
    for (int i = 0; i<CC_MD5_DIGEST_LENGTH; i++) {
        [ret appendFormat:@"%02x",result[i]];
    }
    return ret;
}

- (NSString *)MD5HexDigest {
    return [NSData MD5HexDigest:self];
}

@end
