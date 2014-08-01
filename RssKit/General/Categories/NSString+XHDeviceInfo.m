//
//  NSString+XHDeviceInfo.m
//  YoGame-ios
//
//  Created by 曾 宪华 on 14-7-26.
//  Copyright (c) 2014年 曾宪华 QQ群: (142557668) QQ:543413507  Gmail:xhzengAIB@gmail.com. All rights reserved.
//

#import "NSString+XHDeviceInfo.h"

@implementation NSString (XHDeviceInfo)

+ (NSString *)deviceName {
    return [[UIDevice currentDevice] systemName];
}

+ (NSString *)phoneVersion {
    return [[UIDevice currentDevice] systemVersion];
}

+ (NSString *)appCurrentVersion {
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    return [infoDictionary objectForKey:@"CFBundleShortVersionString"];
}

@end
