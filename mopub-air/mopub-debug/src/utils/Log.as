/**
 * Created by max on 7/16/16.
 */
package utils
{
public class Log
{
    private static var _log:String = "";

    public static function get log():String
    {
        return _log;
    }

    public static function info(message:String):void
    {
        trace("[INFO] " + message);

        _log += "[INFO] " + message + "\n";
    }

    public static function error(message:String):void
    {
        trace("[ERROR] " + message);

        _log += "[ERROR] " + message + "\n";
    }
}
}
