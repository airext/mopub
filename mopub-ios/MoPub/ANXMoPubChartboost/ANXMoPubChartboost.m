//
//  ANXMoPubChartboost.m
//  ANXMoPubChartboost
//
//  Created by Max Rozdobudko on 8/26/16.
//  Copyright © 2016 Max Rozdobudko. All rights reserved.
//

#import "ANXMoPubChartboost.h"
#import "MoPubTypeConversion.h"

@implementation ANXMoPubChartboost

@end

#pragma mark API

FREObject ANXMoPubChartboostIsSupported(FREContext context, void* functionData, uint32_t argc, FREObject argv[])
{
    MoPub_TypeConversion* converter = [[MoPub_TypeConversion alloc] init];
    
    FREObject result;
    if ([converter FREGetInt:1 asObject:&result] == FRE_OK)
    {
        return result;
    }
    
    return NULL;
}

FREObject ANXMoPubChartboostGetVersion(FREContext context, void* functionData, uint32_t argc, FREObject argv[])
{
    MoPub_TypeConversion* converter = [[MoPub_TypeConversion alloc] init];
    
    FREObject version;
    if ([converter FREGetString:[Chartboost getSDKVersion] asObject:&version] == FRE_OK)
    {
        return version;
    }
    
    return NULL;
}

#pragma mark ContextInitialize/ContextFinalizer

void ANXMoPubChartboostContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToSet, const FRENamedFunction** functionsToSet)
{
    NSLog(@"ANXMoPubChartboostContextInitializer");
    
    *numFunctionsToSet = 2;
    
    FRENamedFunction* func = (FRENamedFunction*) malloc(sizeof(FRENamedFunction) * (*numFunctionsToSet));
    
    func[0].name = (const uint8_t*) "isSupported";
    func[0].functionData = NULL;
    func[0].function = &ANXMoPubChartboostIsSupported;
    
    func[1].name = (const uint8_t*) "getVersion";
    func[1].functionData = NULL;
    func[1].function = &ANXMoPubChartboostGetVersion;
    
    *functionsToSet = func;
}

void ANXMoPubChartboostContextFinalizer(FREContext ctx)
{
    NSLog(@"ANXMoPubChartboostContextFinalizer");
}

#pragma mark Initializer/Finalizer

void ANXMoPubChartboostInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet)
{
    NSLog(@"ANXMoPubChartboostInitializer");
    
    *extDataToSet = NULL;
    
    *ctxInitializerToSet = &ANXMoPubChartboostContextInitializer;
    *ctxFinalizerToSet = &ANXMoPubChartboostContextFinalizer;
}

void ANXMoPubChartboostFinalizer(void* extData)
{
    NSLog(@"ANXMoPubChartboostFinalizer");
}