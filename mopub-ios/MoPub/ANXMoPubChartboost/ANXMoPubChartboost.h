//
//  ANXMoPubChartboost.h
//  ANXMoPubChartboost
//
//  Created by Max Rozdobudko on 8/26/16.
//  Copyright © 2016 Max Rozdobudko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Chartboost/Chartboost.h>

#import "FlashRuntimeExtensions.h"

@interface ANXMoPubChartboost : NSObject

@end

#pragma mark API

FREObject ANXMoPubChartboostIsSupported(FREContext context, void* functionData, uint32_t argc, FREObject argv[]);

FREObject ANXMoPubChartboostGetVersion(FREContext context, void* functionData, uint32_t argc, FREObject argv[]);

#pragma mark ContextInitialize/ContextFinalizer

void ANXMoPubChartboostContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToTest, const FRENamedFunction** functionsToSet);

void ANXMoPubChartboostContextFinalizer(FREContext ctx);

#pragma mark Initializer/Finalizer

void ANXMoPubChartboostInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet);

void ANXMoPubChartboostFinalizer(void* extData);