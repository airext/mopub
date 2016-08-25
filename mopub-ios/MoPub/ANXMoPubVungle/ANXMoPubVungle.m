//
//  ANXMoPubVungle.m
//  ANXMoPubVungle
//
//  Created by Max Rozdobudko on 8/24/16.
//  Copyright © 2016 Max Rozdobudko. All rights reserved.
//

#import "ANXMoPubVungle.h"
#import "MoPubTypeConversion.h"

@implementation ANXMoPubVungle

@end

#pragma mark API

FREObject ANXMoPubVungleIsSupported(FREContext context, void* functionData, uint32_t argc, FREObject argv[])
{
    MoPub_TypeConversion* converter = [[MoPub_TypeConversion alloc] init];
    
    FREObject result;
    if ([converter FREGetInt:1 asObject:&result] == FRE_OK)
    {
        return result;
    }
    
    return NULL;
}

FREObject ANXMoPubVungleGetVersion(FREContext context, void* functionData, uint32_t argc, FREObject argv[])
{
    MoPub_TypeConversion* converter = [[MoPub_TypeConversion alloc] init];
    
    FREObject version;
    if ([converter FREGetString:VungleSDKVersion asObject:&version] == FRE_OK)
    {
        return version;
    }
    
    return NULL;
}


FREObject ANXMoPubVungleInit(FREContext context, void* functionData, uint32_t argc, FREObject argv[])
{
    
    
    return NULL;
}

#pragma mark ContextInitialize/ContextFinalizer

void ANXMoPubVungleContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToSet, const FRENamedFunction** functionsToSet)
{
    NSLog(@"ANXMoPubVungleContextInitializer");
    
    *numFunctionsToSet = 3;
    
    FRENamedFunction* func = (FRENamedFunction*) malloc(sizeof(FRENamedFunction) * (*numFunctionsToSet));
    
    func[0].name = (const uint8_t*) "isSupported";
    func[0].functionData = NULL;
    func[0].function = &ANXMoPubVungleIsSupported;
    
    func[1].name = (const uint8_t*) "getVersion";
    func[1].functionData = NULL;
    func[1].function = &ANXMoPubVungleGetVersion;
    
    func[2].name = (const uint8_t*) "init";
    func[2].functionData = NULL;
    func[2].function = &ANXMoPubVungleInit;
    
    *functionsToSet = func;
}

void ANXMoPubVungleContextFinalizer(FREContext ctx)
{
    NSLog(@"ANXMoPubVungleContextFinalizer");
}

#pragma mark Initializer/Finalizer

void ANXMoPubVungleInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet)
{
    NSLog(@"ANXMoPubVungleInitializer");
    
    *extDataToSet = NULL;
    
    *ctxInitializerToSet = &ANXMoPubVungleContextInitializer;
    *ctxFinalizerToSet = &ANXMoPubVungleContextFinalizer;
}

void ANXMoPubVungleFinalizer(void* extData)
{
    NSLog(@"ANXMoPubVungleFinalizer");
}