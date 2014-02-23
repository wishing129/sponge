//
//  EventBriefInfoModel.m
//  TimeInSponge
//
//  Created by Jinghan Xu on 2/22/14.
//  Copyright (c) 2014 TimeInSponge.inc. All rights reserved.
//

#import "EventBriefInfoModel.h"
#import "EventBriefInfoTableViewCell.h"

@implementation EventBriefInfoModel

#pragma mark - table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.allEvents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identifier = @"EventBriefInfoTableViewCell";
    EventBriefInfoTableViewCell *cell = (EventBriefInfoTableViewCell *)[tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"EventBriefInfoTableViewCell" bundle:nil] forCellReuseIdentifier:identifier];
        cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    }
    UIImage *icon = [UIImage imageNamed:@"icon.png"];
    NSDictionary *event = [self.allEvents objectAtIndex:indexPath.row];
    cell.icon.contentMode = UIViewContentModeScaleAspectFit;
    [cell.icon setImage:icon];
    cell.title.text = [event objectForKey:@"title"];
    cell.brief.text = [event objectForKey:@"description"];
//    cell.title.adjustsFontSizeToFitWidth = YES;
//    cell.brief.adjustsFontSizeToFitWidth = YES;
    return cell;
}

#pragma mark - table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.controler didSelectTableFromModel:self rowAtIndexPath:indexPath];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

@end
