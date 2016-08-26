//
//  ANXMoPubAdMob.m
//  ANXMoPubAdMob
//
//  Created by Max Rozdobudko on 8/25/16.
//  Copyright © 2016 Max Rozdobudko. All rights reserved.
//

#import "ANXMoPubAdMob.h"
#import "MoPubTypeConversion.h"

@implementation ANXMoPubAdMob

@end

#pragma mark API

FREObject ANXMoPubAdMobIsSupported(FREContext context, void* functionData, uint32_t argc, FREObject argv[])
{
    MoPub_TypeConversion* converter = [[MoPub_TypeConversion alloc] init];
    
    FREObject result;
    if ([converter FREGetInt:1 asObject:&result] == FRE_OK)
    {
        return result;
    }
    
    return NULL;
}

FREObject ANXMoPubAdMobGetVersion(FREContext context, void* functionData, uint32_t argc, FREObject argv[])
{
    MoPub_TypeConversion* converter = [[MoPub_TypeConversion alloc] init];
    
    FREObject version;
    if ([converter FREGetString:[GADRequest sdkVersion] asObject:&version] == FRE_OK)
    {
        return version;
    }
    
    return NULL;
}

#pragma mark ContextInitialize/ContextFinalizer

void ANXMoPubAdMobContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToSet, const FRENamedFunction** functionsToSet)
{
    NSLog(@"ANXMoPubAdMobContextInitializer");
    
    *numFunctionsToSet = 2;
    
    FRENamedFunction* func = (FRENamedFunction*) malloc(sizeof(FRENamedFunction) * (*numFunctionsToSet));
    
    func[0].name = (const uint8_t*) "isSupported";
    func[0].functionData = NULL;
    func[0].function = &ANXMoPubAdMobIsSupported;
    
    func[1].name = (const uint8_t*) "getVersion";
    func[1].functionData = NULL;
    func[1].function = &ANXMoPubAdMobGetVersion;
    
    *functionsToSet = func;
}

void ANXMoPubAdMobContextFinalizer(FREContext ctx)
{
    NSLog(@"ANXMoPubAdMobContextFinalizer");
}

#pragma mark Initializer/Finalizer

void ANXMoPubAdMobInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet)
{
    NSLog(@"ANXMoPubAdMobInitializer");
    
    *extDataToSet = NULL;
    
    *ctxInitializerToSet = &ANXMoPubAdMobContextInitializer;
    *ctxFinalizerToSet = &ANXMoPubAdMobContextFinalizer;
}

void ANXMoPubAdMobFinalizer(void* extData)
{
    NSLog(@"ANXMoPubAdMobFinalizer");
}