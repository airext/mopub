package com.sticksports.nativeExtensions.mopub.chartboost;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.sticksports.nativeExtensions.mopub.chartboost.functions.GetVersionFunction;
import com.sticksports.nativeExtensions.mopub.chartboost.functions.IsSupportedFunction;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by max on 7/13/16.
 */
public class ExtensionContext extends FREContext
{
    @Override
    public Map<String, FREFunction> getFunctions()
    {
        Map<String, FREFunction> functions = new HashMap<String, FREFunction>();
        functions.put("isSupported", new IsSupportedFunction());
        functions.put("getVersion", new GetVersionFunction());

        return functions;
    }

    @Override
    public void dispose()
    {

    }
}
