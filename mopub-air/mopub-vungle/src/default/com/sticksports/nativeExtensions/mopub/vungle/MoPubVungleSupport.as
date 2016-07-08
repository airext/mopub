/**
 * Created by max on 7/7/16.
 */
package com.sticksports.nativeExtensions.mopub.vungle
{
import flash.external.ExtensionContext;

public class MoPubVungleSupport
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

    public function MoPubVungleSupport()
    {
        super();
    }
}
}
