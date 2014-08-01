//
//  HomeTableViewController.m
//  RssKit
//
//  Created by lerosua on 14-7-30.
//  Copyright (c) 2014年 lerosua. All rights reserved.
//

#import "HomeTableViewController.h"
#import "RSSParser.h"
#import "RSSItem.h"
#import "ContentViewController.h"

@implementation HomeTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {

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

- (void) loadDataSuccess
{
    NSLog(@"loading success");
}

- (void) loadDataFailure:(NSError *)error
{
    NSLog(@"failed loading ...");
}



#pragma mark -
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // in subClass
    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    RSSItem *item = [self.dataSource objectAtIndex:indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%d. %@",indexPath.row,item.title];
    
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    RSSItem *item = [self.dataSource objectAtIndex:indexPath.row];


    ContentViewController *viewController = [[ContentViewController alloc] init];
    viewController.htmlContent = item.itemDescription;
    viewController.link = [item.link absoluteString];
    
    [self.navigationController pushViewController:viewController animated:YES];
    
}

@end
