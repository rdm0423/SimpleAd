//
//  SAInterstitualViewController.m
//  SimpleAd
//
//  Created by Ross McIlwaine on 3/18/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "SAInterstitualViewController.h"
@import iAd;

@interface SAInterstitualViewController () <ADInterstitialAdDelegate>


@end

@implementation SAInterstitualViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [UIViewController prepareInterstitialAds];
    
}

- (IBAction)displayInterstitial:(id)sender {
    
    [self requestInterstitialAdPresentation];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
