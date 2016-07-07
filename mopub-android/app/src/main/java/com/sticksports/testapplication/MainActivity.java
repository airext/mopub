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
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.vungle.publisher.VunglePub;

public class MainActivity extends AppCompatActivity implements MoPubInterstitial.InterstitialAdListener {

    // get the VunglePub instance
    final VunglePub vunglePub = VunglePub.getInstance();

    private MoPubInterstitial mInterstitial;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // MoPub

//        mInterstitial = new MoPubInterstitial(this, "541b4aa543cc483388d2573a763c2c21");
        mInterstitial = new MoPubInterstitial(this, "089b926b2209400099455b0b33143e5a");
        mInterstitial.setInterstitialAdListener(this);

        // Vungle

        // get your App ID from the app's main page on the Vungle Dashboard after setting up your app
        final String app_id = "577ccccf7cdf422131000050";

        // initialize the Publisher SDK
//        vunglePub.init(this, app_id);

        // Rest

        setContentView(R.layout.activity_main);
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

    public void showVungleInterstitial(View view)
    {
        vunglePub.playAd();
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

    // InterstitialAdListener

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
}
