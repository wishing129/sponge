//
//  ViewController.m
//  TimeInSponge
//
//  Created by Jinghan Xu on 2/22/14.
//  Copyright (c) 2014 TimeInSponge.inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIDatePicker *myDatePicker;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self createDatePicker];
}

- (void)datePickerChanged:(UIDatePicker *)paramDatePicker {
    if ([paramDatePicker isEqual:self.myDatePicker]) {
        NSLog(@"Selected date = %@", paramDatePicker.date);
    }
}

- (void)createDatePicker {
    self.myDatePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 100.0f, 40.0f)];
    self.myDatePicker.center = self.view.center;
    [self.myDatePicker addTarget:self action:@selector(datePickerChanged:) forControlEvents:UIControlEventValueChanged];
    NSTimeInterval oneYearTime = 365 * 24 * 60 * 60;
    NSDate *todayDate = [NSDate date];
    NSDate *oneYearFromToday = [todayDate dateByAddingTimeInterval:oneYearTime];
    NSDate *twoYearFromToday = [todayDate dateByAddingTimeInterval:2 * oneYearTime];
    self.myDatePicker.minimumDate = oneYearFromToday;
    self.myDatePicker.maximumDate = twoYearFromToday;
    [self.view addSubview:self.myDatePicker];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
