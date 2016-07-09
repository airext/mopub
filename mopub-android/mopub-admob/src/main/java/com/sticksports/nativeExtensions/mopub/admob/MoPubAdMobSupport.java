package com.sticksports.nativeExtensions.mopub.admob;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

/**
 * Created by max on 7/8/16.
 */
public class MoPubAdMobSupport implements FREExtension
{
    //--------------------------------------------------------------------------
    //
    //  Class properties
    //
    //--------------------------------------------------------------------------

    private static FREContext context;

    public static FREContext getContext()
    {
        return context;
    }

    //--------------------------------------------------------------------------
    //
    //  Methods
    //
    //--------------------------------------------------------------------------

    @Override
    public void initialize()
    {
        Log.d("MoPubAdMobSupport", "initialize()");
    }

    @Override
    public FREContext createContext(String s)
    {
        Log.d("MoPubAdMobSupport", "createContext()");

        context = new ExtensionContext();

        return context;
    }

    @Override
    public void dispose()
    {
        Log.d("MoPubAdMobSupport", "dispose()");
    }
}
