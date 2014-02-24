//
//  AppUtil.h
//  TimeInSponge
//
//  Created by Jinghan Xu on 2/22/14.
//  Copyright (c) 2014 TimeInSponge.inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#define urlForAllEvents @"http://192.168.1.222:8080/rest/meeting/list/owner/abcdef"
#define c_grayColor [UIColor colorWithRed:0.33 green:0.32 blue:0.32 alpha:1.0f]
#define c_yellowColor [UIColor colorWithRed:0.93 green:1.0 blue:0.80 alpha:1.0f]
#define c_greenColor [UIColor colorWithRed:0.86 green:0.91 blue:0.745 alpha:1.0f]
#define c_blackColor [UIColor colorWithRed:0.18 green:0.15 blue:0.20 alpha:1.0f]
#define c_redColor [UIColor colorWithRed:0.6 green:0.09 blue:0.235 alpha:1.0f]
#define eventsTableSize CGRectMake(0.0f, 0.0f, 300.0f, 504.0f)
#define eventsTableStartCenter CGPointMake(160.0f, 252.0f)


@interface AppUtil : NSObject

@end
