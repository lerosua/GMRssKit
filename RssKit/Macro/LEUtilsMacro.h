//
//  LEUtilsMacro.h
//  baseProj
//
//  Created by lerosua on 14-7-28.
//  Copyright (c) 2014年 lerosua. All rights reserved.
//

#ifndef GMRssKit_LEUtilsMacro_h
#define GMRssKit_LEUtilsMacro_h

//存放一些使用方便的工具宏

#define kLEStandardUserDefaults [NSUserDefaults standardUserDefaults]
#define kLENotificationCenter   [NSNotificationCenter defaultCenter]
#define kLEFileManager          [NSFileManager defaultManager]
#define kLEApplication          [UIApplication sharedApplication]

#define kIOSSystemVersion        [[[UIDevice currentDevice] systemVersion] floatValue]

#define kLEScreenHeight            [[UIScreen mainScreen] bounds].size.height
#define kLEScreenWidth             [[UIScreen mainScreen] bounds].size.width


#define is4Inch()               ([[UIScreen mainScreen] bounds].size.height == 568)
#define LEColor(R, G, B, A)       [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]


#ifdef  __IPHONE_6_0         // iOS6 and later
    #define DWTextAlignment NSTextAlignment
    #define DWTextAlignmentLeft()   NSTextAlignmentLeft
    #define DWTextAlignmentCenter() NSTextAlignmentCenter
    #define DWTextAlignmentRight()  NSTextAlignmentRight
    #define DWLineBreakByClipping() NSLineBreakByClipping
#else
    #define DWTextAlignment         UITextAlignment
    #define DWTextAlignmentLeft()   UITextAlignmentLeft
    #define DWTextAlignmentCenter() UITextAlignmentLeft
    #define DWTextAlignmentRight()  UITextAlignmentRight
    #define DWLineBreakByClipping() UILineBreakByClipping
#endif

#endif
