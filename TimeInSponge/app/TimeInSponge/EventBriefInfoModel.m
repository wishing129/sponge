//
//  EventBriefInfoModel.m
//  TimeInSponge
//
//  Created by Jinghan Xu on 2/22/14.
//  Copyright (c) 2014 TimeInSponge.inc. All rights reserved.
//

#import "AppUtil.h"
#import "EventBriefInfoModel.h"
#import "EventBriefInfoTableViewCell.h"
#import <QuartzCore/QuartzCore.h>

@interface EventBriefInfoModel()
@property (nonatomic, strong) NSDictionary *eventTypeToIconMapping;

@end
@implementation EventBriefInfoModel

- (id) init {
    if (self = [super init]) {
        self.eventTypeToIconMapping = @{@"DINNER": @"pig-512.png",
                                        @"MOVIE": @"cat-512.png",
                                        @"TECH_TALK": @"bug-512.png",
                                        @"BAR": @"sparrow-512.png",
                                        @"SOCIAL": @"duck-512.png",
                                        @"OTHER": @"sheep-512.png",
                                        };
    }
    return self;
}

#pragma mark - table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.allEvents.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identifier = @"EventBriefInfoTableViewCell";
    EventBriefInfoTableViewCell *cell = (EventBriefInfoTableViewCell *)[tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"EventBriefInfoTableViewCell" bundle:nil] forCellReuseIdentifier:identifier];
        cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    }
    NSDictionary *event = [self.allEvents objectAtIndex:indexPath.section];
    
    UIImage *icon = [UIImage imageNamed:@"forward-512.png"];
    cell.backgroundColor = c_yellowColor;
    cell.detailIcon.contentMode = UIViewContentModeScaleAspectFit;
    [cell.detailIcon setImage:icon];
    
    NSString *type = [event objectForKey:@"type"];
    UIImage *profileIcon = [UIImage imageNamed:[self.eventTypeToIconMapping objectForKey:type]];
    cell.eventProfileIcon.contentMode = UIViewContentModeScaleAspectFit;
    [cell.eventProfileIcon setImage:profileIcon];
    
    cell.title.text = [event objectForKey:@"title"];
    cell.title.textColor = c_blackColor;
    cell.brief.text = [event objectForKey:@"description"];
    cell.brief.numberOfLines = 2;
    cell.brief.textColor = c_grayColor;
    
    return cell;
}

#pragma mark - table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.selected = NO;
    [self.controler didSelectTableFromModel:self rowAtIndexPath:indexPath];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 13.;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc] init];
    headerView.backgroundColor = [UIColor clearColor];
    return headerView;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    CALayer* layer = cell.layer;
    [layer setCornerRadius:6.0f];
    [layer setMasksToBounds:YES];
    [layer setBorderWidth:0.0f];
}

@end
