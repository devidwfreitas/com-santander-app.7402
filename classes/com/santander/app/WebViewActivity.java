package com.santander.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ca.android.app.CaMDOWebView;
import fnm;
import fnn;
import gpu;
import grs;

public class WebViewActivity extends grs {
  public static final String a = "urlToLoad";
  
  public Dialog b = null;
  
  private final String c = "WebViewActivity";
  
  private final String d = "https://drive.google.com/viewerng/viewer?embedded=true&url=";
  
  private WebView e;
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (MinhaConta.b() == null)
      MinhaConta.a(getApplicationContext()); 
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131297325));
    this.e = new WebView((Context)this);
    this.e.getSettings().setBuiltInZoomControls(true);
    this.e.getSettings().setSupportZoom(true);
    this.e.getSettings().setJavaScriptEnabled(true);
    this.e.getSettings().setAllowContentAccess(true);
    this.e.getViewTreeObserver().addOnGlobalLayoutListener((ViewTreeObserver.OnGlobalLayoutListener)new fnm(this));
    setContentView((View)this.e);
    String str = getIntent().getStringExtra("urlToLoad");
    if (str != null && !"".equals(str)) {
      str = "https://drive.google.com/viewerng/viewer?embedded=true&url=" + str;
      CaMDOWebView.loadUrl(this.e, str);
      CaMDOWebView.setWebViewClient(this.e, (WebViewClient)new fnn(this));
    } 
  }
  
  protected void onPause() {
    super.onPause();
    MinhaConta.a(true);
  }
  
  protected void onResume() {
    super.onResume();
    MinhaConta.a(false);
    if (MinhaConta.f()) {
      Intent intent = new Intent((Context)this, ExitActivity.class);
      intent.addFlags(268435456);
      intent.addFlags(67108864);
      intent.putExtra("errorMessage", MinhaConta.d());
      intent.putExtra("showHome", MinhaConta.e());
      startActivity(intent);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\WebViewActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */