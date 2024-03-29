//
//  CameraTab.m
//  Great of Britain iOS
//
//  Created by David Ford on 15/05/2012.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import "CameraTab.h"

@implementation CameraTab

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self startCamera];
    self.view.backgroundColor = [UIColor clearColor];
}

- (void)viewDidAppear:(BOOL)animated
{
    [self startCamera];
}

- (void)startCamera
{
    
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
