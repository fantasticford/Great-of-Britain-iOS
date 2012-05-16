//
//  HomeTab.m
//  Great of Britain iOS
//
//  Created by David Ford on 15/05/2012.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import "HomeTab.h"

@implementation HomeTab

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self customTabBarController];
    self.view.backgroundColor = [UIColor clearColor];

	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)customTabBarController
{
    UIImage *selectedImage0 = [UIImage imageNamed:@"tb_1_down.png"];
    UIImage *unselectedImage0 = [UIImage imageNamed:@"tb_1_up.png"];
    
    UIImage *selectedImage1 = [UIImage imageNamed:@"tb_2_down.png"];
    UIImage *unselectedImage1 = [UIImage imageNamed:@"tb_2_up.png"];
    
    UIImage *selectedImage2 = [UIImage imageNamed:@"tb_3_down.png"];
    UIImage *unselectedImage2 = [UIImage imageNamed:@"tb_3_up.png"];
    
    UITabBar *tabBar = self.tabBarController.tabBar;
    UITabBarItem *item0 = [tabBar.items objectAtIndex:0];
    UITabBarItem *item1 = [tabBar.items objectAtIndex:1];
    UITabBarItem *item2 = [tabBar.items objectAtIndex:2];
    
    self.tabBarController.tabBar.frame = CGRectMake(0, 430, 320, 50);
    
    [self.tabBarController.tabBar setBackgroundImage:[UIImage imageNamed:@"tb_tabBar_BG.png"]];
    
    [item0 setFinishedSelectedImage:selectedImage0 withFinishedUnselectedImage:unselectedImage0];
    [item1 setFinishedSelectedImage:selectedImage1 withFinishedUnselectedImage:unselectedImage1];
    [item2 setFinishedSelectedImage:selectedImage2 withFinishedUnselectedImage:unselectedImage2];
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
