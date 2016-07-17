package com.sticksports.nativeExtensions.mopub.facebook.functions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.adobe.fre.FREWrongThreadException;
import com.facebook.ads.AdSettings;
import com.facebook.ads.BuildConfig;

/**
 * Created by max on 7/17/16.
 */
public class GetVersionFunction implements FREFunction
{
    @Override
    public FREObject call(FREContext freContext, FREObject[] freObjects)
    {
        try {
            return FREObject.newObject(BuildConfig.VERSION_NAME);
        } catch (FREWrongThreadException e) {
            e.printStackTrace();
        }
        return null;
    }
}
