//
//  MoPubInterstitial.m
//  MoPubIosExtension
//
//  Created by Richard Lord on 14/11/2012.
//  Copyright (c) 2012 Richard Lord. All rights reserved.
//

#import "MoPubInterstitial.h"
#import "MoPubInternalMessages.h"
#import "MoPubKeywords.h"

static FREContext staticContext;

@interface MoPubInterstitial ()
{
}
@property (nonatomic, assign)FREContext context;
@property (nonatomic, assign)MPInterstitialAdController* interstitial;

@end

@implementation MoPubInterstitial

@synthesize context, interstitial;

- (id) initWithContext:(FREContext)extensionContext adUnitId:(NSString*)adUnitId
{
    staticContext = extensionContext;
    
    self = [super init];
    
    if( self )
    {
        self.context = extensionContext;
        self.interstitial = [MPInterstitialAdController interstitialAdControllerForAdUnitId:adUnitId];
        self.interstitial.delegate = self;
    }
    return self;
}

- (BOOL) getIsReady
{
    return self.interstitial.ready;
}

- (void) setTesting:(BOOL)value
{
    self.interstitial.testing = value;
}

- (void) setKeywords:(NSString *)keywords
{
    self.interstitial.keywords = keywords;
}

- (void) loadInterstitial
{
    self.interstitial.keywords = [[MoPubKeywords current] getMopubKeywords];
    [self.interstitial loadAd];
}

- (BOOL) showInterstitial
{
    if( self.interstitial.ready )
    {
        [self.interstitial showFromViewController:[UIApplication sharedApplication].keyWindow.rootViewController];
        return YES;
    }
    return NO;
}

- (void)interstitialDidLoadAd:(MPInterstitialAdController *)interstitial
{
    FREDispatchStatusEventAsync( context, (const uint8_t*) "", interstitialLoaded );
}

- (void)interstitialDidFailToLoadAd:(MPInterstitialAdController *)interstitial
{
    FREDispatchStatusEventAsync( context, (const uint8_t*) "", interstitialFailedToLoad );
}

- (void)interstitialDidAppear:(MPInterstitialAdController *)interstitial
{
    FREDispatchStatusEventAsync( context, (const uint8_t*) "", interstitialShown );
}

- (void)interstitialWillDisappear:(MPInterstitialAdController *)interstitial
{
    FREDispatchStatusEventAsync( context, (const uint8_t*) "", interstitialWillClosed );
}

- (void)interstitialDidDisappear:(MPInterstitialAdController *)interstitial
{
    FREDispatchStatusEventAsync( context, (const uint8_t*) "", interstitialClosed );
}

- (void)interstitialDidExpire:(MPInterstitialAdController *)interstitial
{
    FREDispatchStatusEventAsync( context, (const uint8_t*) "", interstitialExpired );
}

- (void)interstitialDidReceiveTapEvent:(MPInterstitialAdController *)interstitial {
    FREDispatchStatusEventAsync( context, (const uint8_t*) "", interstitialClicked );
}

+ (void)interstitialDidCancel:(MPInterstitialAdController *)interstitial
{
    if (staticContext)
        FREDispatchStatusEventAsync( staticContext, (const uint8_t*) "", interstitialCancelled );
}

@end
