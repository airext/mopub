package com.sticksports.nativeExtensions.mopub.admob.functions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.adobe.fre.FREWrongThreadException;

/**
 * Created by max on 7/8/16.
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
