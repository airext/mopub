//
//  ANXMoPubAdColony.m
//  ANXMoPubAdColony
//
//  Created by Max Rozdobudko on 8/21/16.
//  Copyright © 2016 Max Rozdobudko. All rights reserved.
//

#import "ANXMoPubAdColony.h"
#import "MoPubTypeConversion.h"

@implementation ANXMoPubAdColony

@end

#pragma mark API

FREObject ANXMoPubAdColonyIsSupported(FREContext context, void* functionData, uint32_t argc, FREObject argv[])
{
    MoPub_TypeConversion* converter = [[MoPub_TypeConversion alloc] init];
    
    FREObject result;
    if ([converter FREGetInt:1 asObject:&result] == FRE_OK)
    {
        return result;
    }
    
    return NULL;
}

FREObject ANXMoPubAdColonyGetVersion(FREContext context, void* functionData, uint32_t argc, FREObject argv[])
{
    MoPub_TypeConversion* converter = [[MoPub_TypeConversion alloc] init];
    
    FREObject version;
    if ([converter FREGetString:@"2.3.6" asObject:&version] == FRE_OK)
    {
        return version;
    }
    
    return NULL;
}

#pragma mark ContextInitialize/ContextFinalizer

void ANXMoPubAdColonyContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToSet, const FRENamedFunction** functionsToSet)
{
    NSLog(@"ANXMoPubAdColonyContextInitializer");
    
    *numFunctionsToSet = 2;
    
    FRENamedFunction* func = (FRENamedFunction*) malloc(sizeof(FRENamedFunction) * (*numFunctionsToSet));
    
    func[0].name = (const uint8_t*) "isSupported";
    func[0].functionData = NULL;
    func[0].function = &ANXMoPubAdColonyIsSupported;
    
    func[1].name = (const uint8_t*) "getVersion";
    func[1].functionData = NULL;
    func[1].function = &ANXMoPubAdColonyGetVersion;
    
    *functionsToSet = func;
}

void ANXMoPubAdColonyContextFinalizer(FREContext ctx)
{
    NSLog(@"ANXMoPubAdColonyContextFinalizer");
}

#pragma mark Initializer/Finalizer

void ANXMoPubAdColonyInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet)
{
    NSLog(@"ANXMoPubAdColonyInitializer");
    
    *extDataToSet = NULL;
    
    *ctxInitializerToSet = &ANXMoPubAdColonyContextInitializer;
    *ctxFinalizerToSet = &ANXMoPubAdColonyContextFinalizer;
}

void ANXMoPubAdColonyFinalizer(void* extData)
{
    NSLog(@"ANXMoPubAdColonyFinalizer");
}