This folder contains build.xml build file and stuff required for packaging ANE.

## Requirements
#### Build Requirements
 * **OS X 10.11** 
 * **Xcode 7.3** with `xcodebuild` tool
 * **git 2.3.2** To install git on osx simple run $ git from Terminal, usually git is coming along with Xcode. For more info see this [page](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).
 * **CocoaPods 0.39** Can be installed through Terminal `$ sudo gem install cocoapods`, more on https://cocoapods.org/
 * **gradle 2.10** Can be installed through [Homebrew](http://brew.sh) package manager `$ brew install gradle`, or [manually](https://docs.gradle.org/current/userguide/installation.html)
 * **Java 1.7 (JDK)** Can be installed from Oracle's [site](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
 * **Android SDK Tools 23** You can install Android Studion or use SDK Tools as described [here](https://developer.android.com/sdk/index.html)
 * **AIR SDK 21** Can be downloaded from Adobe's [site](http://www.adobe.com/devnet/air/air-sdk-download.html)
 * **Apache ANT 1.9.5** Can be installed from [Homebrew](http://brew.sh) package manager `$ brew install ant`, or [manually](http://ant.apache.org/manual/install.html)
 
# Building 
 
1 Go to working directory

```
    $ cd /path/to/working/directory
```

2 Clone git repostory:

```
    $ git clone https://rozd@bitbucket.org/rozd/mopub-sdk-ane.git mopub-sdk-ane
```

or pull latest changes if you already have cloned repo

```
    $ git pull
```

3 Configure build properties, for this go to ./build directory and copy `example.build.properties` file to `build.properties`:

```
    $ cd mopub-sdk-ane/build
    $ cp example.build.properties build.properties
```

edit `build.properties` file providing it with your SDKs location and certificate information:

```
bin.ext =

# The location of the .p12 certificate file
# This is not your apple developer certificate. It is a certificate for Air,
# which may be a self-signed certificate created with adt
keystore.file = /path/to/your/certificate/selfSignedTestCert.p12

# The password of the .p12 certificate file
keystore.password = selfSignedTestPassword

# Location of the android sdk
android.sdk = path/to/your/android-sdk/platforms/android-8

# Location of the AIR SDK
air.sdk = /path/to/your/flexsdk/folder
```

**NOTE**: `build.properties` file is added to `.gitignore`, it should not be in repository

4 Configure gradle for Android project (_This is optional if you don't have `ANDROID_HOME` environment variable_). Go to ./braintree-android dir and create `local.properties` text file:

```
    $ cd ../braintree-android
    touch local.properties
```
open it and add `sdk.dir` variable pointed to Android SDK home:
```
    sdk.dir=/Users/{USER}/Library/Android/sdk
```

5 Go to ./build directory and run ant script:

```
    $ cd ../build
    $ ant
```
after that `mopub.ane`, `mopub.swc` and sorresponded files for supported custom networks will be created in ./bin directory.