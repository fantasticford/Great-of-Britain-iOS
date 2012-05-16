//
//  HomeTab.h
//  Great of Britain iOS
//
//  Created by David Ford on 15/05/2012.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeTab : UITableViewController

@property (strong, nonatomic) IBOutlet NSMutableArray *streamImages;

- (void)customTabBarController;
- (void)loadImages;

@end
