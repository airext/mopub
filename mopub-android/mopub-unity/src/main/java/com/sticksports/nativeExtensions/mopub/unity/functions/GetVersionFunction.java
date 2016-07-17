package com.sticksports.nativeExtensions.mopub.unity.functions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.adobe.fre.FREWrongThreadException;
import com.unity3d.ads.android.BuildConfig;
import com.unity3d.ads.android.UnityAds;

/**
 * Created by max on 7/17/16.
 */
public class GetVersionFunction implements FREFunction
{
    @Override
    public FREObject call(FREContext freContext, FREObject[] freObjects)
    {
        try {
            return FREObject.newObject(UnityAds.getSDKVersion());
        } catch (FREWrongThreadException e) {
            e.printStackTrace();
        }
        return null;
    }
}
