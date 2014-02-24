//
//  ViewController.m
//  TimeInSponge
//
//  Created by Jinghan Xu on 2/22/14.
//  Copyright (c) 2014 TimeInSponge.inc. All rights reserved.
//

#import "AppUtil.h"
#import "TSViewController.h"
#import "EventDetailViewController.h"
#import "EventBriefInfoTableView.h"
#import "EventBriefInfoModel.h"
#import "IIViewDeckController.h"
#import "SIKHttpRequest.h"
#import "SIKHttpResponse.h"
#import "CJSONDeserializer.h"
#import "NSDictionary_JSONExtensions.h"

@interface TSViewController ()
// Model
@property (nonatomic, strong) EventBriefInfoModel *eventBriefInfoModel;
// View
@property (nonatomic, strong) UIDatePicker *myDatePicker;
@property (nonatomic, strong) EventBriefInfoTableView *eventBriefInfoTableView;
@end

@implementation TSViewController

#pragma mark - system setup
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupModel];
    [self setupUI];
    [self reloadData];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

#pragma mark - system clean up
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - setup Model
- (void)setupModel {
    self.eventBriefInfoModel = [[EventBriefInfoModel alloc] init];
    self.eventBriefInfoModel.controler = self;
}

#pragma mark - setup UI
- (void)setupUI {
    self.edgesForExtendedLayout = UIRectEdgeNone;
//    [self createDatePicker];
    [self createNavigationBar];
    [self createTableView];
}

- (void)createTableView {
    self.eventBriefInfoTableView = [[EventBriefInfoTableView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 280.0f, 400.0f) style:UITableViewStylePlain];
    self.eventBriefInfoTableView.delegate = self.eventBriefInfoModel;
    self.eventBriefInfoTableView.dataSource = self.eventBriefInfoModel;
    self.eventBriefInfoTableView.center = self.view.center;
    [self.view addSubview:self.eventBriefInfoTableView];
}

- (void)createNavigationBar {
    self.title = @"Main page";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addButtonPressed:)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemOrganize target:self action:@selector(userButtonPressed:)];
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

#pragma mark - UI action handler
- (void)userButtonPressed:(UIBarButtonItem *)paramButton {
    [self.viewDeckController openLeftView];
}

- (void)addButtonPressed:(UIBarButtonItem *)paramButton {
    NSLog(@"Add button pressed");
}

- (void)datePickerChanged:(UIDatePicker *)paramDatePicker {
    if ([paramDatePicker isEqual:self.myDatePicker]) {
        NSLog(@"Selected date = %@", paramDatePicker.date);
    }
}

#pragma mark - model action handler
- (void)didSelectTableFromModel:(NSObject *)model rowAtIndexPath:(NSIndexPath *)indexPath {
    if ([model isEqual:self.eventBriefInfoModel]) {
        EventDetailViewController *edvc = [[EventDetailViewController alloc] initWithNibName:nil bundle:nil];
        [self.navigationController pushViewController:edvc animated:NO];
    }
}

#pragma mark - http request
- (void)reloadData{
    SIKHttpRequest *request = [[SIKHttpRequest alloc] requestWithString:urlForAllEvents withDelegate:self];
    [request setDidFinishSelector:@selector(serverRequestSuccessWith:)];
    [request setDidFailSelector:@selector(serverRequestFailureWith:)];
    [request sendAsynchronous];
    request = nil;
}

- (void)serverRequestSuccessWith:(SIKHttpResponse *)response{
    NSError *error = nil;
    @try {
        self.eventBriefInfoModel.allEvents = [NSDictionary dictionaryWithJSONString:[response responseString] error:&error] ;
        [self.eventBriefInfoTableView reloadData];
    }
    @catch (NSException *exception) {
        NSLog(@"%@", exception);
    }
}

- (void)serverRequestFailureWith: (NSError *)error{
}

@end
