package com.sticksports.nativeExtensions.mopub.vungle.functions;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.vungle.publisher.env.WrapperFramework;
import com.vungle.publisher.inject.Injector;

/**
 * Created by max on 7/19/16.
 */
public class InitFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext context, FREObject[] freObjects)
    {
        Injector injector = Injector.getInstance();
        injector.setWrapperFramework(WrapperFramework.air);
        injector.setWrapperFrameworkVersion("3_0_5");
        final Context applicationContext = context.getActivity().getApplicationContext();
//        injector.setBitmapFactory(new com.vungle.publisher.image.BitmapFactory()
//        {
//            private final int INPUT_DPI = 330;
//
//            public Bitmap getBitmap(String path)
//            {
//                Bitmap bitmap = null;
//                try
//                {
//                    String idPath = "drawable." + path.replace(".png", "");
//                    int resourceId = context.getResourceId(idPath);
//                    BitmapFactory.Options options = new BitmapFactory.Options();
//                    options.inDensity = INPUT_DPI;
//
//                    options.inTargetDensity = ((int)(applicationContext.getResources().getDisplayMetrics().density * options.inDensity));
//
//                    bitmap = android.graphics.BitmapFactory.decodeResource(applicationContext.getResources(), resourceId, options);
//                }
//                catch (Exception exception)
//                {
//                    Log.e("VungleAIR", "error resolving image resource", exception);
//                }
//                return bitmap;
//            }
//        });

        return null;
    }
}
