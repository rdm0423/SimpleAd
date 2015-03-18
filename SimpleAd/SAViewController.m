//
//  SAViewController.m
//  SimpleAd
//
//  Created by Joshua Howland on 7/1/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "SAViewController.h"
@import iAd;

@interface SAViewController () <ADBannerViewDelegate>

@property (weak, nonatomic) IBOutlet ADBannerView *bannerView;

@end

@implementation SAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // moves banner view off the screen (hides until an Ad)
    
}

//
- (void)bannerViewDidLoadAd:(ADBannerView *)banner {
    
    
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
