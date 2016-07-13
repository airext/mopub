package {
import com.sticksports.nativeExtensions.mopub.facebook.MoPubFacebookSupport;
import com.sticksports.nativeExtensions.mopub.unity.MoPubUnitySupport;

import flash.system.Capabilities;
	
	/**
	 * A singleton managing the ad units and their IDs. Use <code>AdUnits.getId(MP_INTERSTITIAL_INCENTIVE)</code> 
	 * to get the ad unit ID to pass to Ads.
	 */
	internal final class AdUnit {
		
		// INTERNAL AD UNITS :
		/** MoPub banner. */
		public static const MP_BANNER:String = "AdUnit.MoPub.Banner";
		/** MoPub interstitial. */
		public static const MP_INTERSTITIAL:String = "AdUnit.MoPub.Interstitial";
		
		// MOPUB AD UNITS IDS :
		private static const BANNER_ANDROID_PHONE:String = BANNER_ANDROID_PHONE_ADMOB;
		private static const BANNER_ANDROID_PHONE_MOPUB:String = "5663bb9010164d7cb435d2e6be6b3e6c";
		private static const BANNER_ANDROID_PHONE_ADMOB:String = "12d45ab3263f45f6bba2661d1dec5931";//"2ab8ae5afc104ae990aa2033227925d7";
		private static const BANNER_ANDROID_PHONE_CHARTBOOST:String = "423fd616ce2746129dd482cb1adb2b56";
		private static const BANNER_ANDROID_TABLET:String = "e7ce950d4d444cdb9d243d859f016248";

		private static const INTERSTITIAL_ANDROID_PHONE:String = INTERSTITIAL_ANDROID_PHONE_CHARTBOOST;//"0d79197382d941ab9f01f578553d9600";
		private static const INTERSTITIAL_ANDROID_PHONE_MOPUB:String = "0d79197382d941ab9f01f578553d9600";
		private static const INTERSTITIAL_ANDROID_PHONE_CHARTBOOST:String = "3f27815f7b754ccd9fbd83d6cb9d3408";
		private static const INTERSTITIAL_ANDROID_PHONE_VUNGLE:String = "089b926b2209400099455b0b33143e5a";
		private static const INTERSTITIAL_ANDROID_PHONE_FACEBOOK:String = "cc1cad7724f44ce1abbf9bec3854eb4c";
		private static const INTERSTITIAL_ANDROID_PHONE_UNITY:String = "2a7f6223fbdd41179b6124fcabeefeb8";
		private static const INTERSTITIAL_ANDROID_PHONE_ADCOLONY:String = "b5f1df18ca4b4fa9a71074ae92c55d40";
		private static const INTERSTITIAL_ANDROID_TABLET:String = "f5451b6962de4f4b99df56e4ed47e725";
		
		private static const BANNER_IOS_PHONE:String = "9ffc32d8454a42bc93effafe5d38ecc2";
		private static const BANNER_IOS_TABLET:String = "6f1a4bb4590d4d9b968ac47480f94a51";
		private static const INTERSTITIAL_IOS_PHONE:String = "4f2b794e09674857a06c364b63e4f177";
		private static const INTERSTITIAL_IOS_TABLET:String = "165c4733c1694b83b7f476c9328581a7";
		
		
		// AD UNIT IDS TO USE :
		private static var bannerID:String;
		private static var interstitialID:String;
		
		/** Whether the device is a tablet or a phone. */
		internal static var isTablet:Boolean;
		
		
		////////////////
		// PUBLIC API //
		////////////////
		
		/**
		 * Initializes the AdUnit IDs matching their corresponding AdUnit.
		 */
		internal static function init():void {

            MoPubFacebookSupport.addTestDevice("ab4eb95b195efc9dc8c5668123147516");

            MoPubUnitySupport.setTestMode(true);
            MoPubUnitySupport.setDebugMode(true);

			// -> iPad
			if(Capabilities.os.indexOf("iPad") > -1) {
				trace("Using iPad ad units.");
				bannerID = BANNER_IOS_TABLET;
				interstitialID = INTERSTITIAL_IOS_TABLET;
				isTablet = true;
			}
				
			// -> iPhone/iPod
			else if(Capabilities.os.indexOf("iPhone") > -1 || Capabilities.os.indexOf("iPod") > -1) {
				trace("Using iPhone/iPod ad units.");
				bannerID = BANNER_IOS_PHONE;
				interstitialID = INTERSTITIAL_IOS_PHONE;
				isTablet = false;
			}
				
			else {
				isTablet = Math.max(Capabilities.screenResolutionX , Capabilities.screenResolutionY) / Capabilities.screenDPI >= 5;
				
				// Android tablet :
				if(isTablet) {
					trace("Using Android tablet ad units.");
					bannerID = BANNER_ANDROID_TABLET;
					interstitialID = INTERSTITIAL_ANDROID_TABLET;
				}
					
					// Android phone :
				else {
					trace("Using Android phone ad units.");
					bannerID = BANNER_ANDROID_PHONE;
					interstitialID = INTERSTITIAL_ANDROID_PHONE;
				}
			}
		}
		
		/**
		 * Returns the AdUnitID to give to Ads for the desired AdUnit.
		 * 
		 * @param adUnit One of the AdUnits.* constants
		 */
		internal static function getId(adUnit:String):String {
			if(adUnit == MP_BANNER) 
				return bannerID;
			if(adUnit == MP_INTERSTITIAL)
				return interstitialID;
			
			throw new Error("Invalid AdUnit : " + adUnit + ". Use one of the AdUnit constants to get the corresponding ID.");
		}
	}
}