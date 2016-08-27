/**
 * Created by max on 7/17/16.
 */
package data
{
import flash.system.Capabilities;

public class AdId
{
    // banners

    private static const ANDROID_PHONE_BANNER_MULTIPLE:String = "2fce07f9105e4cb48e3dd88c1d607184";
    private static const ANDROID_PHONE_BANNER_MOPUB:String = "5663bb9010164d7cb435d2e6be6b3e6c";
    private static const ANDROID_PHONE_BANNER_ADMOB:String = "2ab8ae5afc104ae990aa2033227925d7";
    private static const ANDROID_PHONE_BANNER_FACEBOOK:String = "TBA";

    private static const IOS_PHONE_BANNER_MULTIPLE:String = "60c7401f146c4dc6a85a9061f5ce8ad9";
    private static const IOS_PHONE_BANNER_ADMOB:String = "38fe08b694454109a5735e2f695d6bf8";
    private static const IOS_PHONE_BANNER_ADMOB_DUMMY:String = "6e16d28e34ef426e85be5de3350a6691";
    private static const IOS_PHONE_BANNER_FACEBOOK:String = "02beb5a061604224a734b54eef0732fd";

    // interstitials

    private static const ANDROID_PHONE_INTERSTITIAL_MOPUB:String = "0d79197382d941ab9f01f578553d9600";
    private static const ANDROID_PHONE_INTERSTITIAL_ADMOB:String = "7ecf133838ad4a61ac4b5d1cce2dc2b7";
    private static const ANDROID_PHONE_INTERSTITIAL_ADCOLONY:String = "b5f1df18ca4b4fa9a71074ae92c55d40";
    private static const ANDROID_PHONE_INTERSTITIAL_UNITY:String = "2a7f6223fbdd41179b6124fcabeefeb8";
    private static const ANDROID_PHONE_INTERSTITIAL_VUNGLE:String = "089b926b2209400099455b0b33143e5a";
    private static const ANDROID_PHONE_INTERSTITIAL_VUNGLE_TEST:String = "41a6f18698b646668aa3a8d191dada4d";
    private static const ANDROID_PHONE_INTERSTITIAL_CHARTBOOST:String = "ffc7c7e60fe34732afa8d506e4dabf62";
    private static const ANDROID_PHONE_INTERSTITIAL_FACEBOOK:String = "cc1cad7724f44ce1abbf9bec3854eb4c";

    private static const IOS_PHONE_INTERSTITIAL_ADCOLONY:String = "56d50f5b6f0440a9acf2dbeb7c6ab576";
    private static const IOS_PHONE_INTERSTITIAL_VUNGLE:String = "79105bb39f594e3c94145cdbb57ab334";
    private static const IOS_PHONE_INTERSTITIAL_VUNGLE_TEST:String = "a44250cea68541ad8688ceaf26451423";
    private static const IOS_PHONE_INTERSTITIAL_ADMOB:String = "ee828bbe33fe48dcb75d741915215e12";
    private static const IOS_PHONE_INTERSTITIAL_CHARTBOOST:String = "43f972d6d4da4db58eae9bdfee5f0b33";
    private static const IOS_PHONE_INTERSTITIAL_FACEBOOK:String = "ae63d66f811b47b1a081f69939307942";
    private static const IOS_PHONE_INTERSTITIAL_UNITY:String = "a509adb1cd6f4b80a8197ce3e6ab3a66";

    public static function get PHONE_BANNER_MULTIPLE():String
    {
        if (Capabilities.version.substr(0, 3).toUpperCase() == "IOS")
        {
            return IOS_PHONE_BANNER_MULTIPLE;
        }
        else if (Capabilities.version.substr(0, 3).toUpperCase() == "AND")
        {
            return ANDROID_PHONE_BANNER_MULTIPLE;
        }
        else
        {
            return null;
        }
    }

    public static function get PHONE_BANNER_MOPUB():String
    {
        return ANDROID_PHONE_BANNER_MOPUB;
    }

    public static function get PHONE_BANNER_ADMOB():String
    {
        if (Capabilities.version.substr(0, 3).toUpperCase() == "IOS")
        {
            return IOS_PHONE_BANNER_ADMOB_DUMMY;
        }
        else if (Capabilities.version.substr(0, 3).toUpperCase() == "AND")
        {
            return ANDROID_PHONE_BANNER_ADMOB;
        }
        else
        {
            return null;
        }
    }

    public static function get PHONE_BANNER_ADCOLONY():String
    {
        return "N/A";
    }

    public static function get PHONE_BANNER_UNITY():String
    {
        return "N/A";
    }

    public static function get PHONE_BANNER_VUNGLE():String
    {
        return "N/A";
    }

    public static function get PHONE_BANNER_CHARTBOOST():String
    {
        return "N/A";
    }

    public static function get PHONE_BANNER_FACEBOOK():String
    {
        if (Capabilities.version.substr(0, 3).toUpperCase() == "IOS")
        {
            return IOS_PHONE_BANNER_FACEBOOK;
        }
        else if (Capabilities.version.substr(0, 3).toUpperCase() == "AND")
        {
            return ANDROID_PHONE_BANNER_FACEBOOK;
        }
        else
        {
            return null;
        }
    }

    public static function get PHONE_INTERSTITIAL_MOPUB():String
    {
        return ANDROID_PHONE_INTERSTITIAL_MOPUB;
    }

    public static function get PHONE_INTERSTITIAL_ADMOB():String
    {
        if (Capabilities.version.substr(0, 3).toUpperCase() == "IOS")
        {
            return IOS_PHONE_INTERSTITIAL_ADMOB;
        }
        else if (Capabilities.version.substr(0, 3).toUpperCase() == "AND")
        {
            return ANDROID_PHONE_INTERSTITIAL_ADMOB;
        }
        else
        {
            return null;
        }
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
        if (Capabilities.version.substr(0, 3).toUpperCase() == "IOS")
        {
            return IOS_PHONE_INTERSTITIAL_UNITY;
        }
        else if (Capabilities.version.substr(0, 3).toUpperCase() == "AND")
        {
            return ANDROID_PHONE_INTERSTITIAL_UNITY;
        }
        else
        {
            return null;
        }
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

    public static function get PHONE_INTERSTITIAL_CHARTBOOST():String
    {
        if (Capabilities.version.substr(0, 3).toUpperCase() == "IOS")
        {
            return IOS_PHONE_INTERSTITIAL_CHARTBOOST;
        }
        else if (Capabilities.version.substr(0, 3).toUpperCase() == "AND")
        {
            return ANDROID_PHONE_INTERSTITIAL_CHARTBOOST;
        }
        else
        {
            return null;
        }
    }

    public static function get PHONE_INTERSTITIAL_FACEBOOK():String
    {
        if (Capabilities.version.substr(0, 3).toUpperCase() == "IOS")
        {
            return IOS_PHONE_INTERSTITIAL_FACEBOOK;
        }
        else if (Capabilities.version.substr(0, 3).toUpperCase() == "AND")
        {
            return ANDROID_PHONE_INTERSTITIAL_FACEBOOK;
        }
        else
        {
            return null;
        }
    }

//    private static var _PHONE_BANNER_MOPUB:String;
//    private static var _PHONE_BANNER_ADMOB:String;
//    private static var _PHONE_BANNER_UNITY:String;
//    private static var _PHONE_BANNER_VUNGLE:String;
//    private static var _PHONE_BANNER_CHARTBOOST:String;
//    private static var _PHONE_BANNER_FACEBOOK:String;
//
//    private static var _PHONE_INTERSTITIAL_MOPUB:String;
//    private static var _PHONE_INTERSTITIAL_ADMOB:String;
//    private static var _PHONE_INTERSTITIAL_UNITY:String;
//    private static var _PHONE_INTERSTITIAL_VUNGLE_TEST:String;
//    private static var _PHONE_INTERSTITIAL_CHARTBOOST:String;
//    private static var _PHONE_INTERSTITIAL_FACEBOOK:String;

}
}
