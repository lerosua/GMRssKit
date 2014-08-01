//
//  LEBaseTableViewController.m
//  baseProj
//
//  Created by lerosua on 14-7-28.
//  Copyright (c) 2014年 lerosua. All rights reserved.
//

#import "RSSBaseTableViewController.h"
#import "RSSParser.h"

@interface RSSBaseTableViewController ()

@end

@implementation RSSBaseTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        self.pullDownRefreshed = YES;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) loadDataSource
{
    
    [RSSParser parseRSSFeedWith:self.rssSource success:^(NSArray *feedItems) {
        self.dataSource = [NSMutableArray arrayWithArray:feedItems];
        
        [RSSParser RSSSaveToCache:feedItems];
        
        [self.tableView reloadData];
        [self endPullDownRefreshing];
        [self loadDataSuccess];
    } failure:^(NSError *error) {
        [self endPullDownRefreshing];
        [self loadDataFailure:error];
    }];
    
}

- (void) loadDataSuccess
{
    
}

- (void) loadDataFailure:(NSError *)error
{
    
}

@end
