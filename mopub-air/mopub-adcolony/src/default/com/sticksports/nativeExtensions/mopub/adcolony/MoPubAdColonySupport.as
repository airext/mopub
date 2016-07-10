/**
 * Created by max on 7/10/16.
 */
package com.sticksports.nativeExtensions.mopub.adcolony
{
public class MoPubAdColonySupport
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

    public function MoPubAdColonySupport()
    {
        super();
    }
}
}
