//
//  CustomTabBarController.m
//  Great of Britain iOS
//
//  Created by David Ford on 16/05/2012.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import "CustomTabBarController.h"

@interface CustomTabBarController ()

@end

@implementation CustomTabBarController

- (void)updateTabBarImageForViewControllerIndex:(NSUInteger)index
{
    // Determine the image name based on the selected view controller index
    

}

- (void)drawRect:(CGRect)rect
{
    //CGContextDrawImage(UIGraphicsGetCurrentContext(), rect, self.selectedTabBarImage.CGImage);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	
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
