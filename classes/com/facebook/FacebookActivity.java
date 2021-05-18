package com.facebook;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.util.Log;
import bhp;
import bhv;
import bju;
import bjw;
import boa;
import bqa;
import bsl;
import com.facebook.share.internal.DeviceShareDialogFragment;
import com.facebook.share.model.ShareContent;

public class FacebookActivity extends FragmentActivity {
  public static String a = "PassThrough";
  
  private static String b = "SingleFragment";
  
  private static final String c = FacebookActivity.class.getName();
  
  private Fragment d;
  
  private void c() {
    bhp bhp = bqa.a(bqa.d(getIntent()));
    setResult(0, bqa.a(getIntent(), null, bhp));
    finish();
  }
  
  protected Fragment a() {
    boa boa;
    Intent intent = getIntent();
    FragmentManager fragmentManager = getSupportFragmentManager();
    Fragment fragment2 = fragmentManager.findFragmentByTag(b);
    Fragment fragment1 = fragment2;
    if (fragment2 == null) {
      if ("FacebookDialogFragment".equals(intent.getAction())) {
        boa = new boa();
        boa.setRetainInstance(true);
        boa.show(fragmentManager, b);
        return (Fragment)boa;
      } 
    } else {
      return (Fragment)boa;
    } 
    if ("DeviceShareDialogFragment".equals(intent.getAction())) {
      DeviceShareDialogFragment deviceShareDialogFragment = new DeviceShareDialogFragment();
      deviceShareDialogFragment.setRetainInstance(true);
      deviceShareDialogFragment.a((ShareContent)intent.getParcelableExtra("content"));
      deviceShareDialogFragment.show(fragmentManager, b);
      return (Fragment)deviceShareDialogFragment;
    } 
    bsl bsl = new bsl();
    bsl.setRetainInstance(true);
    fragmentManager.beginTransaction().add(bju.com_facebook_fragment_container, (Fragment)bsl, b).commit();
    return (Fragment)bsl;
  }
  
  public Fragment b() {
    return this.d;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {
    super.onConfigurationChanged(paramConfiguration);
    if (this.d != null)
      this.d.onConfigurationChanged(paramConfiguration); 
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    Intent intent = getIntent();
    if (!bhv.a()) {
      Log.d(c, "Facebook SDK not initialized. Make sure you call sdkInitialize inside your Application's onCreate method.");
      bhv.a(getApplicationContext());
    } 
    setContentView(bjw.com_facebook_activity_layout);
    if (a.equals(intent.getAction())) {
      c();
      return;
    } 
    this.d = a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\FacebookActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */