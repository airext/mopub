package com.sticksports.nativeExtensions.mopub.adcolony.functions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.adobe.fre.FREWrongThreadException;
import com.jirbo.adcolony.AdColony;

/**
 * Created by max on 7/17/16.
 */
public class GetVersionFunction implements FREFunction
{
    @Override
    public FREObject call(FREContext freContext, FREObject[] freObjects)
    {
        try {
            return FREObject.newObject("2.3.6");
        } catch (FREWrongThreadException e) {
            e.printStackTrace();
        }
        return null;
    }
}
