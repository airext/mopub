package com.sticksports.nativeExtensions.mopub.admob;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.sticksports.nativeExtensions.mopub.admob.functions.IsSupportedFunction;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by max on 7/8/16.
 */
public class ExtensionContext extends FREContext
{
    @Override
    public Map<String, FREFunction> getFunctions()
    {
        Map<String, FREFunction> functions = new HashMap<String, FREFunction>();
        functions.put("isSupported", new IsSupportedFunction());

        return functions;
    }

    @Override
    public void dispose()
    {

    }
}
