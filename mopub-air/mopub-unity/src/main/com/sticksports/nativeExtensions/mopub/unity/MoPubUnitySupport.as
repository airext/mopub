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
     * Indicates if Braintree is supported on current platform.
     *
     * @return <code>true</code> if braintree is supported or <code>false</code>
     * otherwise.
     */
    public static function isSupported():Boolean
    {
        return context.call("isSupported");
    }

    public static function setTestMode(value:Boolean):void
    {
        context.call("setTestMode", value);
    }

    public static function setDebugMode(value:Boolean):void
    {
        context.call("setDebugMode", value);
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
