/**
 * Created by max on 7/9/16.
 */
package com.sticksports.nativeExtensions.mopub.facebook
{
import flash.external.ExtensionContext;

public class MoPubFacebookSupport
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
            _context = ExtensionContext.createExtensionContext("com.sticksports.nativeExtensions.mopub.facebook", null);
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
        return context.call("isSupported");
    }

    public static function getVersion():String
    {
        return context.call("getVersion") as String
    }

    public static function addTestDevice(value:String):Boolean
    {
        return context.call("addTestDevice", value);
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
