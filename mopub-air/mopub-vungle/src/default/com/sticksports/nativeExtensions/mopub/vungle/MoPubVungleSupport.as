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

    public static function init():void
    {

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
