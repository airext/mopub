/**
 * Created by max on 7/8/16.
 */
package com.sticksports.nativeExtensions.mopub.admob
{
import flash.external.ExtensionContext;

public class MoPubAdMobSupport
{
    //--------------------------------------------------------------------------
    //
    //  Class methods
    //
    //--------------------------------------------------------------------------

    /**
     * Indicates if ANE is supported on current platform.
     *
     * @return <code>true</code> if ANE is supported or <code>false</code>
     * otherwise.
     */
    public static function isSupported():Boolean
    {
        return false;
    }

    public static function getVersion():String
    {
        return null;
    }

    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------

    public function MoPubAdMobSupport()
    {
        super();
    }
}
}
