package com.sticksports.nativeExtensions.mopub.vungle.functions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.adobe.fre.FREWrongThreadException;

/**
 * Created by max on 11/18/15.
 */
public class IsSupportedFunction implements FREFunction
{
    @Override
    public FREObject call(FREContext context, FREObject[] args)
    {
        try
        {
            return FREObject.newObject(true);
        }
        catch (FREWrongThreadException e)
        {
            return null;
        }
    }
}
