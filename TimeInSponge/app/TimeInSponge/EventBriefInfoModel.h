//
//  EventBriefInfoModel.h
//  TimeInSponge
//
//  Created by Jinghan Xu on 2/22/14.
//  Copyright (c) 2014 TimeInSponge.inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TSViewController.h"

@interface EventBriefInfoModel : NSObject <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, weak) TSViewController *controler;
@property (nonatomic, strong) NSArray *allEvents;

@end
