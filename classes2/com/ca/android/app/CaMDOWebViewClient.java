package com.ca.android.app;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ca.mdo.SDK;

@TargetApi(11)
public class CaMDOWebViewClient extends WebViewClient {
  private String cookie;
  
  private String httpGETUrl;
  
  private WebViewClient mdoWebViewClient;
  
  public CaMDOWebViewClient() {}
  
  public CaMDOWebViewClient(WebViewClient paramWebViewClient) {
    this.mdoWebViewClient = paramWebViewClient;
  }
  
  public String getCookie() {
    return this.cookie;
  }
  
  public String getHttpGETUrl() {
    return this.httpGETUrl;
  }
  
  public WebViewClient getMdoWebViewClient() {
    return this.mdoWebViewClient;
  }
  
  public void onLoadResource(WebView paramWebView, String paramString) {
    SDK.getAgent().onLoadResourceOfWebViewClient(this, paramWebView, paramString);
  }
  
  public void onLoadResourceDefaultImpl(WebView paramWebView, String paramString) {
    super.onLoadResource(paramWebView, paramString);
  }
  
  public void onPageFinished(WebView paramWebView, String paramString) {
    SDK.getAgent().onPageFinishedOfWebViewClient(this, paramWebView, paramString);
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap) {
    SDK.getAgent().onPageStartedOfWebViewClient(this, paramWebView, paramString, paramBitmap);
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2) {
    SDK.getAgent().onReceivedErrorOfWebViewClient(this, paramWebView, paramInt, paramString1, paramString2);
  }
  
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError) {
    if (this.mdoWebViewClient != null)
      this.mdoWebViewClient.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError); 
  }
  
  public void setCookie(String paramString) {
    this.cookie = paramString;
  }
  
  public void setHttpGETUrl(String paramString) {
    this.httpGETUrl = paramString;
  }
  
  public WebResourceResponse shouldInterceptRequest(WebView paramWebView, WebResourceRequest paramWebResourceRequest) {
    return SDK.getAgent().shouldInterceptRequestOfWebViewClient(paramWebView, this.mdoWebViewClient, paramWebResourceRequest);
  }
  
  public WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString) {
    return SDK.getAgent().shouldInterceptRequestOfWebViewClient(paramWebView, this.mdoWebViewClient, paramString);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString) {
    return (this.mdoWebViewClient != null) ? this.mdoWebViewClient.shouldOverrideUrlLoading(paramWebView, paramString) : super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\android\app\CaMDOWebViewClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */