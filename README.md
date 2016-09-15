# MoPub
AIR Native Extension for MoPub (http://mopub.com) mobile ad network

### Native Libraries Versions
 * MoPub 4.9.0 (iOS), 4.7.0 (Android)
 * AdColony 2.6.2 (iOS),
 * AdMob 7.10.0 (iOS),
 * Chartboost 6.4.7 (iOS),
 * Facebook Audience Network 4.5.0 (iOS),
 * Unity Ads 1.5.6 (iOS),
 * Vungle 3.2.2 (iOS)
 
### Project structure
The main `mopub.ane` and all supported networks are separated into independent 
`.ANE` files. That allows you to use pure MoPub extension and add dependencies
to it as needed. When `mopub.ane` is fully functional ANE, the network ANEs 
`mopub-${network}.ane` is used just as provider for required dependency.


```
. 
├── bin # stores built .ANE and .SWC artefacts 
├── build # contains everything need to build artefacts including build script, extension and platform descriptor files
│   └── README.md # contains build instructions 
├── mopub-air # contains IDEA's project with modules for AIR part
├── mopub-android # contains Android Studio's project with modules for Android part
├── mopub-ios # contains Xcode's workspace with project for iOS part
└── README.md # this document
```

### Build
You can find detailed readme in `./build` directory

## MoPub Extension Description
MoPub extension is based on StickSports/ANE-MoPub and inherits its API.

## Custom Networks Extension Description
As described above custom network is not fully functional ANE, it just a 
container for all needed to use corresponded network by `mopub.ane`. Despite it,
each network ANE contains at least two methods:
 * `isSupported` – indicates if there is a native part for corresponded network
 * `getVersion` – returns version of corresponded network SDK
some networks could contain additional utility methods.

## Integration
1. Get `mopub.ane` and one or more required custom network ANE (e.g. `mopub-admob.ane`), you can download them from [repository downloads](https://bitbucket.org/rozd/mopub-sdk-ane/downloads), or buid for yourself as described in [build](build);
2. Link `mopub.ane` and `mopub-admob.ane` with your project ([more info](http://help.adobe.com/en_US/air/build/WS597e5dadb9cc1e0253f7d2fc1311b491071-8000.html))
3. Modify your application descriptor with declaration of using braintree.ane:
```xml
    <extensions>
        <extensionID>com.sticksports.nativeExtensions.MoPub</extensionID>
        <extensionID>com.sticksports.nativeExtensions.mopub.admob</extensionID>
    </extensions>
```

### Integration for iOS
If you want to release apps that build against iOS9, you will need to disable 
ATS in order to ensure MoPub continues to work as expected. To do so, add the 
following to your app plist (`<application><iPhone><InfoAdditions>`):

```xml
    <key>NSAppTransportSecurity</key>
    <dict>
        <key>NSAllowsArbitraryLoads</key>
        <true/>
    </dict>
```

**NOTE:** you may also need to modify your Info.plist according to custom 
network integration instructions. 

### Integration for Android
Add next into your AndroidManifest.xml (`<application><android><manifestAdditions>`):

```xml
    <!-- MoPub -->
    <uses-permission android:name="android.permission.INTERNET" />  
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
    <uses-permission android:name="android.permission.VIBRATE"/>
    <uses-permission android:name="android.permission.READ_PHONE_STATE"/>
```

and next under `<application>` in manifest:
```xml

    <!-- MoPub -->
    <activity android:name="com.mopub.mobileads.MoPubActivity" android:configChanges="keyboardHidden|orientation|screenSize"/>
    <activity android:name="com.mopub.mobileads.MraidActivity" android:configChanges="keyboardHidden|orientation|screenSize"/>
    <activity android:name="com.mopub.common.MoPubBrowser" android:configChanges="keyboardHidden|orientation|screenSize"/>
    <activity android:name="com.mopub.mobileads.MraidVideoPlayerActivity" android:configChanges="keyboardHidden|orientation|screenSize"/>
    <activity android:name="com.google.ads.AdActivity" android:configChanges="keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize" />
    <activity android:name="com.millennialmedia.android.MMActivity" android:theme="@android:style/Theme.Translucent.NoTitleBar" android:configChanges="keyboardHidden|orientation|keyboard" />
    <activity android:name="com.millennialmedia.android.VideoPlayer" android:configChanges="keyboardHidden|orientation|keyboard" />
```

#### Additional Integration for AdMob on Android:

```xml
    <meta-data android:name="com.google.android.gms.version" android:value="@integer/google_play_services_version" />
    
    <!-- MoPub : AdMob mediation -->
    <activity android:name="com.google.android.gms.ads.AdActivity" 
              android:configChanges="keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize" />
```

#### Additional Integration for AdColony on Android:

```xml
    <!-- MoPub : Adcolony mediation -->
    <activity android:name="com.jirbo.adcolony.AdColonyOverlay"
              android:configChanges="keyboardHidden|orientation|screenSize"
              android:theme="@android:style/Theme.Translucent.NoTitleBar.Fullscreen" />
    
    <activity android:name="com.jirbo.adcolony.AdColonyFullscreen"
              android:configChanges="keyboardHidden|orientation|screenSize"
              android:theme="@android:style/Theme.Black.NoTitleBar.Fullscreen" />
    
    <activity android:name="com.jirbo.adcolony.AdColonyBrowser"
              android:configChanges="keyboardHidden|orientation|screenSize"
              android:theme="@android:style/Theme.Black.NoTitleBar.Fullscreen" />
```

#### Additional Integration for Chartboost on Android:

```xml
    <!-- MoPub : Chartboost mediation -->
    <activity android:name="com.chartboost.sdk.CBImpressionActivity"
              android:configChanges="keyboardHidden|orientation|screenSize"
              android:theme="@android:style/Theme.Translucent.NoTitleBar"
              android:excludeFromRecents="true" />
```

#### Additional Integration for Vungle on Android:

```xml
    <!-- MoPub: Required Activity for playback of Vungle video ads -->
    <activity android:name="com.vungle.publisher.FullScreenAdActivity"
              android:configChanges="keyboardHidden|orientation|screenSize"
              android:theme="@android:style/Theme.NoTitleBar.Fullscreen"/>
```

#### Additional Integration for Facebook Audience Network on Android:

```xml
    <!-- MoPub: Facebook Audience -->
    <activity android:name="com.facebook.ads.InterstitialAdActivity"
              android:configChanges="keyboardHidden|orientation" />

```

#### Additional Integration for Facebook Audience Network on Android:

```xml
    <!-- MoPub: Unity Ads -->
    <activity android:name="com.unity3d.ads.android.view.UnityAdsFullscreenActivity"
            android:configChanges="fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen"
            android:hardwareAccelerated="true"
            android:theme="@android:style/Theme.NoTitleBar.Fullscreen" />
```

