package com.sticksports.nativeExtensions.mopub.functions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.mopub.mobileads.BuildConfig;
import com.sticksports.nativeExtensions.mopub.MoPubExtension;

/**
 * Created by max on 8/21/16.
 */
public class MoPubGetVersion implements FREFunction
{
    @Override
    public FREObject call(FREContext context, FREObject[] args)
    {
        try
        {
            return FREObject.newObject(BuildConfig.VERSION_NAME);
        }
        catch(Exception e)
        {
            MoPubExtension.logW("Exception trying to retrieve SDK version : " + e.toString());
            e.printStackTrace();
        }

        return null;
    }

}
