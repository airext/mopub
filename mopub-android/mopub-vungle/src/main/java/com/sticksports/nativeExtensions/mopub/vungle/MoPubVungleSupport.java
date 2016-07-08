package com.sticksports.nativeExtensions.mopub.vungle;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

/**
 * Created by max on 7/7/16.
 */
public class MoPubVungleSupport implements FREExtension
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
        Log.d("MoPubVungleSupport", "initialize()");
    }

    @Override
    public FREContext createContext(String s)
    {
        Log.d("MoPubVungleSupport", "createContext()");

        context = new ExtensionContext();

        return context;
    }

    @Override
    public void dispose()
    {
        Log.d("MoPubVungleSupport", "dispose()");
    }
}
