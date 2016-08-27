//
//  ANXMoPubFacebook.m
//  ANXMoPubFacebook
//
//  Created by Max Rozdobudko on 8/27/16.
//  Copyright © 2016 Max Rozdobudko. All rights reserved.
//

#import "ANXMoPubFacebook.h"
#import "MoPubTypeConversion.h"

@implementation ANXMoPubFacebook

@end

#pragma mark API

FREObject ANXMoPubFacebookIsSupported(FREContext context, void* functionData, uint32_t argc, FREObject argv[])
{
    MoPub_TypeConversion* converter = [[MoPub_TypeConversion alloc] init];
    
    FREObject result;
    if ([converter FREGetInt:1 asObject:&result] == FRE_OK)
    {
        return result;
    }
    
    return NULL;
}

FREObject ANXMoPubFacebookGetVersion(FREContext context, void* functionData, uint32_t argc, FREObject argv[])
{
    MoPub_TypeConversion* converter = [[MoPub_TypeConversion alloc] init];
    
    FREObject version;
    if ([converter FREGetString:FB_AD_SDK_VERSION asObject:&version] == FRE_OK)
    {
        return version;
    }
    
    return NULL;
}

FREObject ANXMoPubFacebookAddTestDevice(FREContext context, void* functionData, uint32_t argc, FREObject argv[])
{
    if (argc > 0)
    {
        MoPub_TypeConversion* converter = [[MoPub_TypeConversion alloc] init];
        
        NSString* testDevice;
        if ([converter FREGetObject:argv[0] asString:&testDevice] == FRE_OK)
        {
            [FBAdSettings addTestDevice:testDevice];
        }
    }
        
    return NULL;
}

#pragma mark ContextInitialize/ContextFinalizer

void ANXMoPubFacebookContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToSet, const FRENamedFunction** functionsToSet)
{
    NSLog(@"ANXMoPubFacebookContextInitializer");
    
    *numFunctionsToSet = 3;
    
    FRENamedFunction* func = (FRENamedFunction*) malloc(sizeof(FRENamedFunction) * (*numFunctionsToSet));
    
    func[0].name = (const uint8_t*) "isSupported";
    func[0].functionData = NULL;
    func[0].function = &ANXMoPubFacebookIsSupported;
    
    func[1].name = (const uint8_t*) "getVersion";
    func[1].functionData = NULL;
    func[1].function = &ANXMoPubFacebookGetVersion;
    
    func[2].name = (const uint8_t*) "addTestDevice";
    func[2].functionData = NULL;
    func[2].function = &ANXMoPubFacebookAddTestDevice;
    
    *functionsToSet = func;
}

void ANXMoPubFacebookContextFinalizer(FREContext ctx)
{
    NSLog(@"ANXMoPubFacebookContextFinalizer");
}

#pragma mark Initializer/Finalizer

void ANXMoPubFacebookInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet)
{
    NSLog(@"ANXMoPubFacebookInitializer");
    
    *extDataToSet = NULL;
    
    *ctxInitializerToSet = &ANXMoPubFacebookContextInitializer;
    *ctxFinalizerToSet = &ANXMoPubFacebookContextFinalizer;
}

void ANXMoPubFacebookFinalizer(void* extData)
{
    NSLog(@"ANXMoPubFacebookFinalizer");
}