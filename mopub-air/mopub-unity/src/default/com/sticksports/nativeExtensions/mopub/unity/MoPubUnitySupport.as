/**
 * Created by max on 7/10/16.
 */
package com.sticksports.nativeExtensions.mopub.unity
{
import flash.external.ExtensionContext;

public class MoPubUnitySupport
{
    //--------------------------------------------------------------------------
    //
    //  Class properties
    //
    //--------------------------------------------------------------------------

    private static var _context:ExtensionContext;

    private static function get context():ExtensionContext
    {
        if (_context == null)
        {
            _context = ExtensionContext.createExtensionContext("com.sticksports.nativeExtensions.mopub.unity", null);
        }

        return _context;
    }

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

    public static function setTestMode(value:Boolean):void
    {
    }

    public static function setDebugMode(value:Boolean):void
    {
    }

    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------

    public function MoPubUnitySupport()
    {
        super();
    }
}
}