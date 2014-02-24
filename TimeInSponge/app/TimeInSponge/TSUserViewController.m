//
//  TSUserViewController.m
//  TimeInSponge
//
//  Created by Jinghan Xu on 2/23/14.
//  Copyright (c) 2014 TimeInSponge.inc. All rights reserved.
//

#import "TSUserViewController.h"

@interface TSUserViewController ()
@property (nonatomic, strong) UIImageView *bgImageView;

@end

@implementation TSUserViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupUI];
}

- (void)setupUI {
    [self createBgImageView];
}

- (void)createBgImageView {
    self.bgImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg.png"]];
    self.bgImageView.center = self.view.center;
    [self.view addSubview:self.bgImageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
