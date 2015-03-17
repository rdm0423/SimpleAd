//
//  SAViewController.m
//  SimpleAd
//
//  Created by Joshua Howland on 7/1/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AdBannerSampleViewController.h"
#import <iAd/iAd.h>

@interface AdBannerSampleViewController () <ADBannerViewDelegate>

@property (weak, nonatomic) IBOutlet ADBannerView *banner;

@end

@implementation AdBannerSampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave {
    return YES;
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner {
    
    // great place to animate ad view in
    NSLog(@"Ready to present the ad.");
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
    NSLog(@"Unable to fetch ad for display.");
}

- (void)bannerViewActionDidFinish:(ADBannerView *)banner {
    NSLog(@"User dismissed or tapped on ad.");
}


@end
