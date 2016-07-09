package com.sticksports.testapplication;

import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.ads.*;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.vungle.publisher.VunglePub;

public class MainActivity extends AppCompatActivity implements MoPubInterstitial.InterstitialAdListener, InterstitialAdListener {

    // get the VunglePub instance
    final VunglePub vunglePub = VunglePub.getInstance();

    private MoPubInterstitial mInterstitial;

    private InterstitialAd interstitialAd;

    private MoPubView moPubView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        AdSettings.addTestDevice("ab4eb95b195efc9dc8c5668123147516");

        setContentView(R.layout.activity_main);

        // MoPub

        moPubView = (MoPubView) findViewById(R.id.adview);
        moPubView.setAdUnitId("12d45ab3263f45f6bba2661d1dec5931");

//        mInterstitial = new MoPubInterstitial(this, "541b4aa543cc483388d2573a763c2c21");
//        mInterstitial = new MoPubInterstitial(this, "089b926b2209400099455b0b33143e5a"); // Vungle
//        mInterstitial = new MoPubInterstitial(this, "920c39bda78046879370d4b59c197e7d"); // AdColony
        mInterstitial = new MoPubInterstitial(this, "cc1cad7724f44ce1abbf9bec3854eb4c"); // Facebook Audience
        mInterstitial.setInterstitialAdListener(this);

        // Vungle

        // get your App ID from the app's main page on the Vungle Dashboard after setting up your app
        final String app_id = "577ccccf7cdf422131000050";

        // initialize the Publisher SDK
//        vunglePub.init(this, app_id);

        // Facebook

        interstitialAd = new InterstitialAd(this, "864123657026264_864123927026237");
        interstitialAd.setAdListener(this);

        // Rest


        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

       FloatingActionButton fab = (FloatingActionButton) findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
                        .setAction("Action", null).show();
            }
        });
    }

    @Override
    protected void onPause() {
        super.onPause();
        vunglePub.onPause();
    }

    @Override
    protected void onResume() {
        super.onResume();
        vunglePub.onResume();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }

    //

    void showToast(CharSequence text)
    {
        Context context = getApplicationContext();
        int duration = Toast.LENGTH_SHORT;

        Toast toast = Toast.makeText(context, text, duration);
        toast.show();
    }

    // Handlers

    public void loadMoPubBanner(View view)
    {
        moPubView.loadAd();
    }

    public void showVungleInterstitial(View view)
    {
        vunglePub.playAd();
    }

    public void loadFacebookInterstitial(View view)
    {
        interstitialAd.loadAd();
    }

    public void showFacebookInterstitial(View view)
    {
        interstitialAd.show();
    }

    public void loadMoPubInterstitial(View view)
    {
        mInterstitial.load();
    }

    public void showMoPubInterstitial(View view)
    {
        if (mInterstitial.isReady()) {
            mInterstitial.show();
        } else {
            // Caching is likely already in progress if `isReady()` is false.
            // Avoid calling `load()` here and instead rely on the callbacks as suggested below.
        }
    }

    // MoPubInterstitial.InterstitialAdListener

    @Override
    public void onInterstitialLoaded(MoPubInterstitial interstitial) {
        showToast("Interstitial Loaded");
    }

    @Override
    public void onInterstitialFailed(MoPubInterstitial interstitial, MoPubErrorCode errorCode) {
        showToast("Interstitial Failed: " + errorCode);
    }

    @Override
    public void onInterstitialShown(MoPubInterstitial interstitial) {
        showToast("Interstitial Shown");
    }

    @Override
    public void onInterstitialClicked(MoPubInterstitial interstitial) {

    }

    @Override
    public void onInterstitialDismissed(MoPubInterstitial interstitial) {

    }

    // Facebook.AdListener

    @Override
    public void onInterstitialDisplayed(Ad ad) {

    }

    @Override
    public void onInterstitialDismissed(Ad ad) {

    }

    @Override
    public void onError(Ad ad, AdError adError) {
        showToast("Facebook Error: " + adError.getErrorMessage());
    }

    @Override
    public void onAdLoaded(Ad ad) {
        showToast("Facebook Loaded");
    }

    @Override
    public void onAdClicked(Ad ad) {

    }
}
