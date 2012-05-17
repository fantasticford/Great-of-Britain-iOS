//
//  HomeTab.m
//  Great of Britain iOS
//
//  Created by David Ford on 15/05/2012.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import "HomeTab.h"

@implementation HomeTab

@synthesize streamImages = _streamImages;
@synthesize imageButton = _imageButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self customTabBarController];
    [self loadImages];
    self.view.backgroundColor = [UIColor clearColor];
}

- (void)viewDidUnload
{
    [self setView:nil];
    [super viewDidUnload];
}

- (void)customTabBarController
{
    UIImage *barLogoImage = [UIImage imageNamed: @"hp_GOB.png"];
    UIImageView *navigationImage = [[UIImageView alloc] initWithImage: barLogoImage];
    self.navigationItem.titleView = navigationImage;
    
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

- (void)loadImages
{
    self.streamImages = [[NSMutableArray alloc] init];
   
    for(int r = 0; r < 12; r++){
        
        NSMutableArray *threeImageSet = [[NSMutableArray alloc] init];
        
        for(int t = 0; t < 4; t++){
            
            NSMutableDictionary *singleImageSet = [[NSMutableDictionary alloc] init];
            
            int no = ((r * 4) + t) + 1;
            
            NSString *imageNumber = [NSString stringWithFormat:@"%d", no];
            NSString *imageURL = @"http://upload.wikimedia.org/wikipedia/commons/5/58/1NumberOneInCircle.png";
            NSString *imageUser = @"Google";
            
            [singleImageSet setValue:imageNumber forKey:@"imageNumber"];
            [singleImageSet setValue:imageURL forKey:@"imageURL"];
            [singleImageSet setValue:imageUser forKey:@"imageUser"];
            
            [threeImageSet addObject:singleImageSet];
        }
        
        [self.streamImages addObject:threeImageSet];

    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if([self.streamImages count] != 0) return [self.streamImages count] + 1;
    else return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == [self.streamImages count]){
        
        UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"loadMoreCell"];
        return cell;

    } else {
        
        UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"imageCell"];
        
        NSArray *singleRowArray = [self.streamImages objectAtIndex:indexPath.row];
        
        for(int c = 0; c < [singleRowArray count]; c++){
            int gap = (c * 80) + 4;
            
            NSDictionary *singleImageDict = [singleRowArray objectAtIndex:c];
            
            NSString *imageURL = [singleImageDict objectForKey:@"imageURL"];
            NSString *imageUser = [singleImageDict objectForKey:@"imageUser"];
            NSString *imageNumber = [singleImageDict objectForKey:@"imageNumber"];
            
            self.imageButton = [[UIButton alloc] initWithFrame:CGRectMake(gap, 4, 73, 73)];
            self.imageButton.backgroundColor = [UIColor colorWithRed:0.000 green:0.424 blue:0.671 alpha:1];
            
            UILabel *numberLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
            numberLabel.text = [NSString stringWithFormat:@"%@", imageNumber];
            numberLabel.textColor = [UIColor colorWithRed:1.000 green:1.000 blue:1.000 alpha:1];
            numberLabel.backgroundColor = [UIColor clearColor];
            
            [self.imageButton addSubview:numberLabel];
            [self.imageButton addTarget:self action:@selector(imageButtonAction:) forControlEvents:UIControlEventTouchDown];
            [self.imageButton setEnabled:YES];
            
            [cell addSubview:self.imageButton];
        }
        
        
        return cell;
    }
}

- (IBAction)imageButtonAction:(id)sender
{
    NSLog(@"Button Press");
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
