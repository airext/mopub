package com.sticksports.nativeExtensions.mopub.facebook.functions;

import com.adobe.fre.*;
import com.facebook.ads.AdSettings;

/**
 * Created by max on 7/9/16.
 */
public class AddTestDeviceFunction implements FREFunction
{
    @Override
    public FREObject call(FREContext freContext, FREObject[] freObjects)
    {
        try
        {
            AdSettings.addTestDevice(freObjects[0].getAsString());

            return FREObject.newObject(true);
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
