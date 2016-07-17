package com.sticksports.nativeExtensions.mopub.admob.functions;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.adobe.fre.FREWrongThreadException;

/**
 * Created by max on 7/17/16.
 */
public class GetVersionFunction implements FREFunction
{
    @Override
    public FREObject call(FREContext context, FREObject[] freObjects)
    {
        try
        {
            ApplicationInfo ai = context.getActivity().getPackageManager().getApplicationInfo(context.getActivity().getPackageName(), PackageManager.GET_META_DATA);
            Bundle bundle = ai.metaData;

            String version = bundle.getString("com.google.android.gms.version");

            return FREObject.newObject(version);
        }
        catch (FREWrongThreadException e)
        {
            e.printStackTrace();
        }
        catch (PackageManager.NameNotFoundException e)
        {
            e.printStackTrace();
        }
        return null;
    }
}
