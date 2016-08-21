/Applications/Intellij\ IDEA.app/Contents/jre/jdk/Contents/Home/jre/bin/java -Dapplication.home=/Users/max/sdks/flex/4.15.0 -Dfile.encoding=en -Duser.region=en -Xmx2048m -jar /Users/max/sdks/flex/4.15.0/lib/adt.jar \
	-package -target ipa-debug-interpreter \
	-provisioning-profile /Users/max/cert/max.rozdobudko.mobileprovision \
	-storetype PKCS12 -keystore /Users/max/cert/max.rozdobudko.p12 -storepass Vopli1982 \
	/Users/max/dev/mahesh/MoPub/mopub-air/mopub-debug/bin-debug/MoPubTest.ipa \
	/Users/max/dev/mahesh/MoPub/mopub-air/mopub-debug/bin-debug/MoPubTest-app.xml \
	-C /Users/max/dev/mahesh/MoPub/mopub-air/mopub-debug/bin-debug MoPubTest.swf \
	-extdir /Users/max/dev/mahesh/MoPub/bin \
	-extdir /Users/max/dev/mahesh/MoPub/mopub-air/mopub-debug/ane 
   #  -platformsdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk/ 
