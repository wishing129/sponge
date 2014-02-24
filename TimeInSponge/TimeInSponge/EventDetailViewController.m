//
//  EventDetailViewController.m
//  TimeInSponge
//
//  Created by Jinghan Xu on 2/22/14.
//  Copyright (c) 2014 TimeInSponge.inc. All rights reserved.
//

#import "EventDetailViewController.h"

@interface EventDetailViewController ()
@property (nonatomic, strong) UILabel *myLabel;

@end

@implementation EventDetailViewController

#pragma mark - system setup
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupUI];
}

#pragma mark - system clean up
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - setup
- (void)setupUI {
    [self createNavigationBar];
    [self createLabel];
}

- (void)createLabel {
    self.myLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, 100.0, 100.0)];
    self.myLabel.text = @"detail view";
    self.myLabel.center = self.view.center;
    [self.view addSubview:self.myLabel];
}

- (void)createNavigationBar {
    self.title = @"Detail page";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemOrganize target:self action:@selector(goBackButtonPressed:)];
}

#pragma mark - action handler
- (void)goBackButtonPressed:(UIBarButtonItem *)paramButton {
    [self.navigationController popViewControllerAnimated:NO];
}

@end
