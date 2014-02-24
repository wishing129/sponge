//
//  EventBriefInfoTableViewCell.h
//  TimeInSponge
//
//  Created by Jinghan Xu on 2/22/14.
//  Copyright (c) 2014 TimeInSponge.inc. All rights reserved.
//

#import "TSTableViewCell.h"

@interface EventBriefInfoTableViewCell : TSTableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *detailIcon;
@property (weak, nonatomic) IBOutlet UIImageView *eventProfileIcon;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *brief;
@end
