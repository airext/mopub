package com.sticksports.nativeExtensions.mopub.unity.functions;

import android.util.Log;
import com.adobe.fre.*;
import com.unity3d.ads.android.UnityAds;

/**
 * Created by max on 7/10/16.
 */
public class SetDebugModeFunction implements FREFunction
{
    @Override
    public FREObject call(FREContext freContext, FREObject[] freObjects)
    {
        try
        {
            UnityAds.setDebugMode(freObjects[0].getAsBool());

            Log.d("MoPubUnitySupport", "SetDebugModeFunction:" + freObjects[0].getAsBool());
        }
        catch (FRETypeMismatchException e)
        {
            e.printStackTrace();
        }
        catch (FREInvalidObjectException e)
        {
            e.printStackTrace();
        }
        catch (FREWrongThreadException e)
        {
            e.printStackTrace();
        }

        return null;
    }
}
