/**
 * Created by max on 7/9/16.
 */
package com.sticksports.nativeExtensions.mopub.facebook
{
public class MoPubFacebookSupport
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

    public static function addTestDevice(value:String):Boolean
    {
        return false;
    }
    
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------

    public function MoPubFacebookSupport()
    {
        super();
    }
}
}
