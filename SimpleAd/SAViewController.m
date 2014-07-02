//
//  SAViewController.m
//  SimpleAd
//
//  Created by Joshua Howland on 7/1/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "SAViewController.h"
#import <iAd/iAd.h>

@interface SAViewController () <ADBannerViewDelegate>

@property (weak, nonatomic) IBOutlet ADBannerView *banner;

@end

@implementation SAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    CGRect frame = self.banner.frame;
    self.banner.frame = CGRectMake(0, self.view.frame.size.height, frame.size.width, frame.size.height);
    self.banner.delegate = self;
    
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
    [UIView animateWithDuration:0.5 animations:^{
        CGRect frame = self.banner.frame;
        self.banner.frame = CGRectMake(0, self.view.frame.size.height - frame.size.height, frame.size.width, frame.size.height);
        
    }];
    
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {

}

- (void)bannerViewActionDidFinish:(ADBannerView *)banner {

}


@end
