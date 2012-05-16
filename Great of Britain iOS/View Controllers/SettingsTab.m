//
//  SettingsTab.m
//  Great of Britain iOS
//
//  Created by David Ford on 16/05/2012.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import "SettingsTab.h"

@implementation SettingsTab

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor clearColor];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
