//
//  HomeTab.h
//  Great of Britain iOS
//
//  Created by David Ford on 15/05/2012.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import "PullRefreshTableViewController.h"

@interface HomeTab : PullRefreshTableViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet NSMutableArray *streamImages;
@property (strong, nonatomic) IBOutlet UIButton *imageButton;

- (void)customTabBarController;
- (void)loadImages;
- (IBAction)imageButtonAction:(id)sender;

@end
