//
//  LEBaseTableViewController.h
//  baseProj
//
//  Created by lerosua on 14-7-28.
//  Copyright (c) 2014年 lerosua. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XHSysatemRefreshTableViewController.h>
@interface RSSBaseTableViewController : XHSysatemRefreshTableViewController

@property (nonatomic,copy) NSString *rssSource;


/**
 *  下拉刷新，loadDataSource成功时调用
 */
- (void) loadDataSuccess;
/**
 *  下拉刷新，loadDataSource失败时调用
 */
- (void) loadDataFailure:(NSError *)error;

@end
