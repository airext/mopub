package com.sticksports.nativeExtensions.mopub.adcolony;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

/**
 * Created by max on 7/8/16.
 */
public class MoPubAdColonySupport implements FREExtension
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
        Log.d("MoPubAdColonySupport", "initialize()");
    }

    @Override
    public FREContext createContext(String s)
    {
        Log.d("MoPubAdColonySupport", "createContext()");

        context = new ExtensionContext();

        return context;
    }

    @Override
    public void dispose()
    {
        Log.d("MoPubAdColonySupport", "dispose()");
    }
}

