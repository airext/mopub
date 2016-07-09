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
     * Indicates if Braintree is supported on current platform.
     *
     * @return <code>true</code> if braintree is supported or <code>false</code>
     * otherwise.
     */
    public static function isSupported():Boolean
    {
        return false;
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
