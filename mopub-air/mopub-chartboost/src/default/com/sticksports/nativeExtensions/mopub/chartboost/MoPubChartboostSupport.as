/**
 * Created by max on 7/7/16.
 */
package com.sticksports.nativeExtensions.mopub.chartboost
{
import flash.external.ExtensionContext;

public class MoPubChartboostSupport
{
    //--------------------------------------------------------------------------
    //
    //  Class methods
    //
    //--------------------------------------------------------------------------

    /**
     * Indicates if Braintree is supported on current platform.
     *
     * @return <code>true</code> if braintree is supported or <code>false</code>
     * otherwise.
     */
    public static function isSupported():Boolean
    {
        return false;
    }

    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------

    public function MoPubChartboostSupport()
    {
        super();
    }
}
}
