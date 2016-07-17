package com.sticksports.nativeExtensions.mopub.chartboost.functions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.adobe.fre.FREWrongThreadException;
import com.chartboost.sdk.Chartboost;

/**
 * Created by max on 7/17/16.
 */
public class GetVersionFunction implements FREFunction
{
    @Override
    public FREObject call(FREContext freContext, FREObject[] freObjects)
    {
        try {
            return FREObject.newObject(Chartboost.getSDKVersion());
        } catch (FREWrongThreadException e) {
            e.printStackTrace();
        }
        return null;
    }
}
