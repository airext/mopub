//
//  ANXMoPubVungle.h
//  ANXMoPubVungle
//
//  Created by Max Rozdobudko on 8/24/16.
//  Copyright © 2016 Max Rozdobudko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <VungleSDK/VungleSDK.h>

#import "FlashRuntimeExtensions.h"

@interface ANXMoPubVungle : NSObject

@end

#pragma mark API

FREObject ANXMoPubAdColonyIsSupported(FREContext context, void* functionData, uint32_t argc, FREObject argv[]);

FREObject ANXMoPubVungleGetVersion(FREContext context, void* functionData, uint32_t argc, FREObject argv[]);

FREObject ANXMoPubVungleInit(FREContext context, void* functionData, uint32_t argc, FREObject argv[]);

#pragma mark ContextInitialize/ContextFinalizer

void ANXMoPubVungleContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToTest, const FRENamedFunction** functionsToSet);

void ANXMoPubVungleContextFinalizer(FREContext ctx);

#pragma mark Initializer/Finalizer

void ANXMoPubVungleInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet);

void ANXMoPubVungleFinalizer(void* extData);
