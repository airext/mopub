//
//  ANXMoPubAdMob.h
//  ANXMoPubAdMob
//
//  Created by Max Rozdobudko on 8/25/16.
//  Copyright © 2016 Max Rozdobudko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GoogleMobileAds/GoogleMobileAds.h>

#import "FlashRuntimeExtensions.h"

@interface ANXMoPubAdMob : NSObject

@end

#pragma mark API

FREObject ANXMoPubAdMobIsSupported(FREContext context, void* functionData, uint32_t argc, FREObject argv[]);

FREObject ANXMoPubAdMobGetVersion(FREContext context, void* functionData, uint32_t argc, FREObject argv[]);

#pragma mark ContextInitialize/ContextFinalizer

void ANXMoPubAdMobContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToTest, const FRENamedFunction** functionsToSet);

void ANXMoPubAdMobContextFinalizer(FREContext ctx);

#pragma mark Initializer/Finalizer

void ANXMoPubAdMobInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet);

void ANXMoPubAdMobFinalizer(void* extData);
