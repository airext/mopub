//
//  ANXMoPubUnity.m
//  ANXMoPubUnity
//
//  Created by Max Rozdobudko on 8/27/16.
//  Copyright © 2016 Max Rozdobudko. All rights reserved.
//

#import "ANXMoPubUnity.h"
#import "MoPubTypeConversion.h"

@implementation ANXMoPubUnity

@end

#pragma mark API

FREObject ANXMoPubUnityIsSupported(FREContext context, void* functionData, uint32_t argc, FREObject argv[])
{
    MoPub_TypeConversion* converter = [[MoPub_TypeConversion alloc] init];
    
    FREObject result;
    if ([converter FREGetInt:1 asObject:&result] == FRE_OK)
    {
        return result;
    }
    
    return NULL;
}

FREObject ANXMoPubUnityGetVersion(FREContext context, void* functionData, uint32_t argc, FREObject argv[])
{
    MoPub_TypeConversion* converter = [[MoPub_TypeConversion alloc] init];
    
    FREObject version;
    if ([converter FREGetString:[UnityAds getSDKVersion] asObject:&version] == FRE_OK)
    {
        return version;
    }
    
    return NULL;
}

FREObject ANXMoPubUnitySetTestMode(FREContext context, void* functionData, uint32_t argc, FREObject argv[])
{
    if (argc > 0)
    {
        MoPub_TypeConversion* converter = [[MoPub_TypeConversion alloc] init];
        
        uint32_t testMode;
        if ([converter FREGetObject:argv[0] asBoolean:&testMode] == FRE_OK)
        {
            [[UnityAds sharedInstance] setTestMode:testMode];
        }
    }
    
    return NULL;
}

FREObject ANXMoPubUnitySetDebugMode(FREContext context, void* functionData, uint32_t argc, FREObject argv[])
{
    if (argc > 0)
    {
        MoPub_TypeConversion* converter = [[MoPub_TypeConversion alloc] init];
        
        uint32_t debugMode;
        if ([converter FREGetObject:argv[0] asBoolean:&debugMode] == FRE_OK)
        {
            [[UnityAds sharedInstance] setDebugMode:debugMode];
        }
    }
    
    return NULL;
}

#pragma mark ContextInitialize/ContextFinalizer

void ANXMoPubUnityContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToSet, const FRENamedFunction** functionsToSet)
{
    NSLog(@"ANXMoPubUnityContextInitializer");
    
    *numFunctionsToSet = 4;
    
    FRENamedFunction* func = (FRENamedFunction*) malloc(sizeof(FRENamedFunction) * (*numFunctionsToSet));
    
    func[0].name = (const uint8_t*) "isSupported";
    func[0].functionData = NULL;
    func[0].function = &ANXMoPubUnityIsSupported;
    
    func[1].name = (const uint8_t*) "getVersion";
    func[1].functionData = NULL;
    func[1].function = &ANXMoPubUnityGetVersion;
    
    func[2].name = (const uint8_t*) "setTestMode";
    func[2].functionData = NULL;
    func[2].function = &ANXMoPubUnitySetTestMode;
    
    func[3].name = (const uint8_t*) "setDebugMode";
    func[3].functionData = NULL;
    func[3].function = &ANXMoPubUnitySetDebugMode;
    
    *functionsToSet = func;
}

void ANXMoPubUnityContextFinalizer(FREContext ctx)
{
    NSLog(@"ANXMoPubUnityContextFinalizer");
}

#pragma mark Initializer/Finalizer

void ANXMoPubUnityInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet)
{
    NSLog(@"ANXMoPubUnityInitializer");
    
    *extDataToSet = NULL;
    
    *ctxInitializerToSet = &ANXMoPubUnityContextInitializer;
    *ctxFinalizerToSet = &ANXMoPubUnityContextFinalizer;
}

void ANXMoPubUnityFinalizer(void* extData)
{
    NSLog(@"ANXMoPubUnityFinalizer");
}
