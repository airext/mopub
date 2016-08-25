/**
 * Created by max on 7/17/16.
 */
package data
{
import flash.system.Capabilities;

public class AdId
{
    public static const ANDROID_PHONE_BANNER_MULTIPLE:String = "2fce07f9105e4cb48e3dd88c1d607184";
    public static const ANDROID_PHONE_BANNER_MOPUB:String = "5663bb9010164d7cb435d2e6be6b3e6c";
    public static const ANDROID_PHONE_BANNER_ADMOB:String = "2ab8ae5afc104ae990aa2033227925d7";
    public static const ANDROID_PHONE_BANNER_ADCOLONY:String = "N/A";
    public static const ANDROID_PHONE_BANNER_UNITY:String = "TBA";
    public static const ANDROID_PHONE_BANNER_VUNGLE:String = "TBA";
    public static const ANDROID_PHONE_BANNER_CHARTBOOST:String = "TBA";
    public static const ANDROID_PHONE_BANNER_FACEBOOK:String = "TBA";

    public static const ANDROID_PHONE_INTERSTITIAL_MOPUB:String = "0d79197382d941ab9f01f578553d9600";
    public static const ANDROID_PHONE_INTERSTITIAL_ADMOB:String = "7ecf133838ad4a61ac4b5d1cce2dc2b7";
    public static const ANDROID_PHONE_INTERSTITIAL_ADCOLONY:String = "b5f1df18ca4b4fa9a71074ae92c55d40";
    public static const ANDROID_PHONE_INTERSTITIAL_UNITY:String = "2a7f6223fbdd41179b6124fcabeefeb8";
    public static const ANDROID_PHONE_INTERSTITIAL_VUNGLE:String = "089b926b2209400099455b0b33143e5a";
    public static const ANDROID_PHONE_INTERSTITIAL_VUNGLE_TEST:String = "41a6f18698b646668aa3a8d191dada4d";
    public static const ANDROID_PHONE_INTERSTITIAL_CHARTBOOST:String = "ffc7c7e60fe34732afa8d506e4dabf62";
    public static const ANDROID_PHONE_INTERSTITIAL_FACEBOOK:String = "cc1cad7724f44ce1abbf9bec3854eb4c";

    public static const IOS_PHONE_INTERSTITIAL_ADCOLONY:String = "56d50f5b6f0440a9acf2dbeb7c6ab576";
    public static const IOS_PHONE_INTERSTITIAL_VUNGLE:String = "79105bb39f594e3c94145cdbb57ab334";
    public static const IOS_PHONE_INTERSTITIAL_VUNGLE_TEST:String = "a44250cea68541ad8688ceaf26451423";

    public static function get PHONE_BANNER_MULTIPLE():String
    {
        return ANDROID_PHONE_BANNER_MULTIPLE;
    }

    public static function get PHONE_BANNER_MOPUB():String
    {
        return _PHONE_BANNER_MOPUB;
    }

    public static function get PHONE_BANNER_ADMOB():String
    {
        return _PHONE_BANNER_ADMOB;
    }

    public static function get PHONE_BANNER_ADCOLONY():String
    {
        return ANDROID_PHONE_BANNER_ADCOLONY;
    }

    public static function get PHONE_BANNER_UNITY():String
    {
        return _PHONE_BANNER_UNITY;
    }

    public static function get PHONE_BANNER_VUNGLE():String
    {
        return _PHONE_BANNER_VUNGLE;
    }

    public static function get PHONE_BANNER_CHARTBOOST():String
    {
        return _PHONE_BANNER_CHARTBOOST;
    }

    public static function get PHONE_BANNER_FACEBOOK():String
    {
        return _PHONE_BANNER_FACEBOOK;
    }

    public static function get PHONE_INTERSTITIAL_MOPUB():String
    {
        return _PHONE_INTERSTITIAL_MOPUB;
    }

    public static function get PHONE_INTERSTITIAL_ADMOB():String
    {
        return _PHONE_INTERSTITIAL_ADMOB;
    }

    public static function get PHONE_INTERSTITIAL_ADCOLONY():String
    {
        if (Capabilities.version.substr(0, 3).toUpperCase() == "IOS")
        {
           return IOS_PHONE_INTERSTITIAL_ADCOLONY;
        }
        else if (Capabilities.version.substr(0, 3).toUpperCase() == "AND")
        {
           return ANDROID_PHONE_INTERSTITIAL_ADCOLONY;
        }
        else
        {
            return null;
        }
    }

    public static function get PHONE_INTERSTITIAL_UNITY():String
    {
        return _PHONE_INTERSTITIAL_UNITY;
    }

    public static function get PHONE_INTERSTITIAL_VUNGLE():String
    {
        if (Capabilities.version.substr(0, 3).toUpperCase() == "IOS")
        {
            return IOS_PHONE_INTERSTITIAL_VUNGLE_TEST;
        }
        else if (Capabilities.version.substr(0, 3).toUpperCase() == "AND")
        {
            return ANDROID_PHONE_INTERSTITIAL_VUNGLE_TEST;
        }
        else
        {
            return null;
        }
    }

    public static function get PHONE_INTERSTITIAL_VUNGLE_TEST():String
    {
        return _PHONE_INTERSTITIAL_VUNGLE_TEST;
    }

    public static function get PHONE_INTERSTITIAL_CHARTBOOST():String
    {
        return _PHONE_INTERSTITIAL_CHARTBOOST;
    }

    public static function get PHONE_INTERSTITIAL_FACEBOOK():String
    {
        return _PHONE_INTERSTITIAL_FACEBOOK;
    }

    private static var _PHONE_BANNER_MOPUB:String;
    private static var _PHONE_BANNER_ADMOB:String;
    private static var _PHONE_BANNER_UNITY:String;
    private static var _PHONE_BANNER_VUNGLE:String;
    private static var _PHONE_BANNER_CHARTBOOST:String;
    private static var _PHONE_BANNER_FACEBOOK:String;

    private static var _PHONE_INTERSTITIAL_MOPUB:String;
    private static var _PHONE_INTERSTITIAL_ADMOB:String;
    private static var _PHONE_INTERSTITIAL_UNITY:String;
    private static var _PHONE_INTERSTITIAL_VUNGLE_TEST:String;
    private static var _PHONE_INTERSTITIAL_CHARTBOOST:String;
    private static var _PHONE_INTERSTITIAL_FACEBOOK:String;

}
}
