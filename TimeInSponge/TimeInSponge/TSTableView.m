//
//  TSTableView.m
//  TimeInSponge
//
//  Created by Jinghan Xu on 2/22/14.
//  Copyright (c) 2014 TimeInSponge.inc. All rights reserved.
//

#import "TSTableView.h"

@implementation TSTableView

- (id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    if (self = [super initWithFrame:frame style:style]) {
        self.backgroundColor = [UIColor whiteColor];
        [self setShowsVerticalScrollIndicator:NO];
        [self setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    }
    return self;
}

@end
