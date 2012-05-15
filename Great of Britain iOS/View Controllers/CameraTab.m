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
	// Do any additional setup after loading the view.
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init]; 
    picker.delegate = self; 
    picker.allowsEditing = YES;
    if (([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])) 
    {
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        [self presentModalViewController: picker animated:YES]; 
    }
    else
    {
        NSLog(@"Boo");
    }
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
