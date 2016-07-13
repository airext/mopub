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
    //  Class properties
    //
    //--------------------------------------------------------------------------

    private static var _context:ExtensionContext;

    private static function get context():ExtensionContext
    {
        if (_context == null)
        {
            _context = ExtensionContext.createExtensionContext("com.sticksports.nativeExtensions.mopub.chartboost", null);
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
