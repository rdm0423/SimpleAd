//
//  InterstitialSampleViewController.m
//  SimpleAd
//
//  Created by Caleb Hicks on 3/17/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "InterstitialSampleViewController.h"
@import iAd;

@interface InterstitialSampleViewController ()

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
