package com.santander.app.webview.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ca.android.app.CaMDOWebView;
import mxn;
import mzr;
import nep;
import neq;
import ner;
import nes;
import net;

public class WebViewActivity extends AppCompatActivity implements ner {
  public static final int a = 1;
  
  public static String b;
  
  private WebView c;
  
  private nes d;
  
  private MenuItem e;
  
  private MenuItem f;
  
  private Dialog g = null;
  
  public void a() {
    finish();
  }
  
  public void a(String paramString) {
    CaMDOWebView.loadUrl(this.c, paramString);
  }
  
  public void b() {
    this.c.getSettings().setJavaScriptEnabled(true);
    this.c.getSettings().setPluginState(WebSettings.PluginState.OFF);
    this.c.getSettings().setAllowFileAccess(false);
    CaMDOWebView.setWebViewClient(this.c, (WebViewClient)new nep(this));
    this.c.setWebChromeClient((WebChromeClient)new neq(this, (Activity)this));
  }
  
  public void b(String paramString) {
    if (this.g == null) {
      this.g = mxn.a((Activity)this, getString(2131297207), paramString, true);
    } else {
      this.g.dismiss();
      this.g = mxn.a((Activity)this, getString(2131297207), paramString, true);
    } 
    this.g.show();
  }
  
  public void c() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    switch (mzr.d()) {
      default:
        actionBar.setBackgroundDrawable(getResources().getDrawable(2130839041));
        return;
      case 1:
        actionBar.setBackgroundDrawable(getResources().getDrawable(2130839041));
        return;
      case 2:
      case 5:
        actionBar.setBackgroundDrawable(getResources().getDrawable(2130839041));
        return;
      case 3:
        actionBar.setBackgroundDrawable(getResources().getDrawable(2130839041));
        return;
      case 4:
        break;
    } 
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839041));
  }
  
  public void d() {
    if (!this.c.canGoForward()) {
      this.e.setEnabled(false);
      this.e.setIcon(getDrawable(2130838149));
    } else {
      this.e.setEnabled(true);
      this.e.setIcon(getDrawable(2130838150));
    } 
    if (!this.c.canGoBack()) {
      this.f.setEnabled(false);
      this.f.setIcon(getDrawable(2130838147));
      return;
    } 
    this.f.setEnabled(true);
    this.f.setIcon(getDrawable(2130838148));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968761);
    this.c = (WebView)findViewById(2131756127);
    this.d = (nes)new net(this);
    if (this.d.b(b)) {
      this.d.b();
      this.d.a();
      this.d.a(b);
      return;
    } 
    this.d.c(getString(2131297348));
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu) {
    getMenuInflater().inflate(2131886101, paramMenu);
    this.f = paramMenu.getItem(0);
    this.e = paramMenu.getItem(1);
    this.f.setEnabled(false);
    this.e.setEnabled(false);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
    if (paramInt == 4 && this.c.canGoBack()) {
      this.c.goBack();
      return true;
    } 
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    switch (paramMenuItem.getItemId()) {
      default:
        return true;
      case 2131759634:
        if (this.c.canGoBack())
          this.c.goBack(); 
      case 2131759635:
        if (this.c.canGoForward())
          this.c.goForward(); 
      case 2131759636:
        break;
    } 
    this.d.c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\webview\presentation\WebViewActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */