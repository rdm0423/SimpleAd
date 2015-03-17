//
//  InterstitialSampleViewController.m
//  SimpleAd
//
//  Created by Caleb Hicks on 3/17/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "InterstitialSampleViewController.h"
@import iAd;

@interface InterstitialSampleViewController () <ADInterstitialAdDelegate>

@end

@implementation InterstitialSampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // fetches ad content and readies it for display
    [UIViewController prepareInterstitialAds];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)presentInterstitial:(id)sender {
    
    // If the interstitial managed to load, then we'll present it now.
    [self requestInterstitialAdPresentation];

}

#pragma mark ADInterstitialViewDelegate methods

// When this method is invoked, the application should remove the view from the screen and tear it down.
// The content will be unloaded shortly after this method is called and no new content will be loaded in that view.
// This may occur either when the user dismisses the interstitial view via the dismiss button or
// if the content in the view has expired.
- (void)interstitialAdDidUnload:(ADInterstitialAd *)interstitialAd
{
    NSLog(@"The user dismissed the interstitial ad.");
}

// This method will be invoked when an error has occurred attempting to get advertisement content.
// The ADError enum lists the possible error codes.
- (void)interstitialAd:(ADInterstitialAd *)interstitialAd didFailWithError:(NSError *)error
{
    NSLog(@"No ad loaded. Cannot present interstitial ad.");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
