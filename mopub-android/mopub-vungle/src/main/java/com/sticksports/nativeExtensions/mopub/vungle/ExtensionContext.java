package com.sticksports.nativeExtensions.mopub.vungle;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.sticksports.nativeExtensions.mopub.vungle.functions.GetVersionFunction;
import com.sticksports.nativeExtensions.mopub.vungle.functions.IsSupportedFunction;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by max on 7/7/16.
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
