//
//  ANXMoPubUnity.h
//  ANXMoPubUnity
//
//  Created by Max Rozdobudko on 8/27/16.
//  Copyright © 2016 Max Rozdobudko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UnityAds/UnityAds.h>

#import "FlashRuntimeExtensions.h"

@interface ANXMoPubUnity : NSObject

@end

#pragma mark API

FREObject ANXMoPubUnityIsSupported(FREContext context, void* functionData, uint32_t argc, FREObject argv[]);

FREObject ANXMoPubUnityGetVersion(FREContext context, void* functionData, uint32_t argc, FREObject argv[]);

FREObject ANXMoPubUnitySetTestMode(FREContext context, void* functionData, uint32_t argc, FREObject argv[]);

FREObject ANXMoPubUnitySetDebugMode(FREContext context, void* functionData, uint32_t argc, FREObject argv[]);

#pragma mark ContextInitialize/ContextFinalizer

void ANXMoPubUnityContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToTest, const FRENamedFunction** functionsToSet);

void ANXMoPubUnityContextFinalizer(FREContext ctx);

#pragma mark Initializer/Finalizer

void ANXMoPubUnityInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet);

void ANXMoPubUnityFinalizer(void* extData);