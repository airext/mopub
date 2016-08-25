//
//  ANXMoPubAdColony.h
//  ANXMoPubAdColony
//
//  Created by Max Rozdobudko on 8/21/16.
//  Copyright © 2016 Max Rozdobudko. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "FlashRuntimeExtensions.h"

@interface ANXMoPubAdColony : NSObject

@end

#pragma mark API

FREObject ANXMoPubAdColonyIsSupported(FREContext context, void* functionData, uint32_t argc, FREObject argv[]);

FREObject ANXMoPubAdColonyGetVersion(FREContext context, void* functionData, uint32_t argc, FREObject argv[]);

#pragma mark ContextInitialize/ContextFinalizer

void ANXMoPubAdColonyContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToTest, const FRENamedFunction** functionsToSet);

void ANXMoPubAdColonyContextFinalizer(FREContext ctx);

#pragma mark Initializer/Finalizer

void ANXMoPubAdColonyInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet);

void ANXMoPubAdColonyFinalizer(void* extData);
