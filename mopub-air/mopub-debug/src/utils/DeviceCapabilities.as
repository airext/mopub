/**
 * Created by max on 7/16/16.
 */
package utils
{
import flash.display.Stage;
import flash.system.Capabilities;

public class DeviceCapabilities
{
    public static var dpi:int = Capabilities.screenDPI;

    public static var tabletScreenMinimumInches:Number = 5;

    public static function isTablet(stage:Stage):Boolean
    {
        var screenWidth:Number = stage.fullScreenWidth;

        var screenHeight:Number = stage.fullScreenHeight;

        if (screenWidth < screenHeight)
        {
            screenWidth = screenHeight;
        }

        return (screenWidth / dpi) >= tabletScreenMinimumInches;
    }
}
}
