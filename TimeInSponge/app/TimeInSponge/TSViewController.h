//
//  ViewController.h
//  TimeInSponge
//
//  Created by Jinghan Xu on 2/22/14.
//  Copyright (c) 2014 TimeInSponge.inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TSTableView.h"

@interface TSViewController : UIViewController

- (void)didSelectTableFromModel:(NSObject *)model rowAtIndexPath:(NSIndexPath *)indexPath;

@end
