package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import bhf;
import bhh;
import bhv;
import bnu;
import com.ca.android.app.CaMDOActivity;

public class CustomTabMainActivity extends CaMDOActivity {
  public static final String a = CustomTabMainActivity.class.getSimpleName() + ".extra_params";
  
  public static final String b = CustomTabMainActivity.class.getSimpleName() + ".extra_chromePackage";
  
  public static final String c = CustomTabMainActivity.class.getSimpleName() + ".extra_url";
  
  public static final String d = CustomTabMainActivity.class.getSimpleName() + ".action_refresh";
  
  private static final String e = "oauth";
  
  private boolean f = true;
  
  private BroadcastReceiver g;
  
  public static final String a() {
    return "fb" + bhv.l() + "://authorize";
  }
  
  private void a(int paramInt, Intent paramIntent) {
    LocalBroadcastManager.getInstance((Context)this).unregisterReceiver(this.g);
    if (paramIntent != null) {
      setResult(paramInt, paramIntent);
    } else {
      setResult(paramInt);
    } 
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (bhf.a.equals(getIntent().getAction())) {
      setResult(0);
      finish();
      return;
    } 
    if (paramBundle == null) {
      paramBundle = getIntent().getBundleExtra(a);
      String str = getIntent().getStringExtra(b);
      (new bnu("oauth", paramBundle)).a((Activity)this, str);
      this.f = false;
      this.g = (BroadcastReceiver)new bhh(this);
      LocalBroadcastManager.getInstance((Context)this).registerReceiver(this.g, new IntentFilter(bhf.a));
      return;
    } 
  }
  
  protected void onNewIntent(Intent paramIntent) {
    super.onNewIntent(paramIntent);
    if (d.equals(paramIntent.getAction())) {
      Intent intent = new Intent(bhf.b);
      LocalBroadcastManager.getInstance((Context)this).sendBroadcast(intent);
      a(-1, paramIntent);
      return;
    } 
    if (bhf.a.equals(paramIntent.getAction())) {
      a(-1, paramIntent);
      return;
    } 
  }
  
  protected void onResume() {
    super.onResume();
    if (this.f)
      a(0, (Intent)null); 
    this.f = true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\CustomTabMainActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */