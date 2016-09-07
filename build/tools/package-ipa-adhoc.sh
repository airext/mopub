/Applications/Intellij\ IDEA.app/Contents/jre/jdk/Contents/Home/jre/bin/java -Dapplication.home=/Users/max/sdks/flex/4.15.0 -Dfile.encoding=en -Duser.region=en -Xmx2048m -jar /Users/max/sdks/flex/4.15.0/lib/adt.jar \
	-package -target ipa-debug-interpreter \
	-provisioning-profile /Users/max/cert/games2win/Suprit_dev_profile_29th_Aug.mobileprovision \
	-storetype PKCS12 -keystore /Users/max/cert/games2win/Certificates_G2W_dev_15_02_16.p12 -storepass 123 \
	/Users/max/dev/mahesh/MoPub/mopub-air/mopub-debug/bin-debug/MoPubTest-adhoc.ipa \
	/Users/max/dev/mahesh/MoPub/mopub-air/mopub-debug/bin-debug/MoPubTest-app-adhoc.xml \
	-C /Users/max/dev/mahesh/MoPub/mopub-air/mopub-debug/bin-debug mopub-debug_adhoc.swf \
	-extdir /Users/max/dev/mahesh/MoPub/bin \
	-extdir /Users/max/dev/mahesh/MoPub/mopub-air/mopub-debug/ane 
   #  -platformsdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk/ 
