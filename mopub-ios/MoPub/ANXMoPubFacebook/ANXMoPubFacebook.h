//
//  ANXMoPubFacebook.h
//  ANXMoPubFacebook
//
//  Created by Max Rozdobudko on 8/27/16.
//  Copyright © 2016 Max Rozdobudko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <FBAudienceNetwork/FBAudienceNetwork.h>

#import "FlashRuntimeExtensions.h"

@interface ANXMoPubFacebook : NSObject

@end

#pragma mark API

FREObject ANXMoPubFacebookIsSupported(FREContext context, void* functionData, uint32_t argc, FREObject argv[]);

FREObject ANXMoPubFacebookGetVersion(FREContext context, void* functionData, uint32_t argc, FREObject argv[]);

FREObject ANXMoPubFacebookAddRTestdevice(FREContext context, void* functionData, uint32_t argc, FREObject argv[]);

#pragma mark ContextInitialize/ContextFinalizer

void ANXMoPubFacebookContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToTest, const FRENamedFunction** functionsToSet);

void ANXMoPubFacebookContextFinalizer(FREContext ctx);

#pragma mark Initializer/Finalizer

void ANXMoPubFacebookInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet);

void ANXMoPubFacebookFinalizer(void* extData);