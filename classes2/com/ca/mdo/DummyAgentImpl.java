package com.ca.mdo;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.content.BroadcastReceiver;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.location.Location;
import android.net.http.AndroidHttpClient;
import android.view.MotionEvent;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import com.ca.android.app.CaMDOWebViewClient;
import com.ca.android.app.ScreenLoadTimeMeter;
import com.ca.integration.CaMDOCallback;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HttpContext;

public class DummyAgentImpl extends DefaultAnalyticsAgentImpl {
  private boolean initialized = false;
  
  public DummyAgentImpl(Application paramApplication) {
    register(paramApplication);
  }
  
  public void addToApmHeader(String paramString) {}
  
  public void connectOnHttpURLConnection(HttpURLConnection paramHttpURLConnection) throws IOException {
    paramHttpURLConnection.connect();
  }
  
  public void dispatchTouchEventOfActivity(MotionEvent paramMotionEvent) {}
  
  public void enterPrivateZone() {}
  
  @TargetApi(8)
  public HttpResponse executeOnHttpClient(AndroidHttpClient paramAndroidHttpClient, HttpUriRequest paramHttpUriRequest) throws IOException {
    return paramAndroidHttpClient.execute(paramHttpUriRequest);
  }
  
  public HttpResponse executeOnHttpClient(HttpClient paramHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest) throws IOException {
    return paramHttpClient.execute(paramHttpHost, paramHttpRequest);
  }
  
  public HttpResponse executeOnHttpClient(HttpClient paramHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext) throws IOException {
    return paramHttpClient.execute(paramHttpHost, paramHttpRequest, paramHttpContext);
  }
  
  public HttpResponse executeOnHttpClient(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest) throws IOException {
    return paramHttpClient.execute(paramHttpUriRequest);
  }
  
  public HttpResponse executeOnHttpClient(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext) throws IOException {
    return paramHttpClient.execute(paramHttpUriRequest, paramHttpContext);
  }
  
  public HttpResponse executeOnHttpClient(AbstractHttpClient paramAbstractHttpClient, HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext) throws IOException {
    return paramAbstractHttpClient.execute(paramHttpUriRequest, paramHttpContext);
  }
  
  public HttpResponse executeOnHttpClient(DefaultHttpClient paramDefaultHttpClient, HttpUriRequest paramHttpUriRequest) throws IOException {
    return paramDefaultHttpClient.execute(paramHttpUriRequest);
  }
  
  public HttpResponse executeOnHttpClient(DefaultHttpClient paramDefaultHttpClient, HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext) throws IOException {
    return paramDefaultHttpClient.execute(paramHttpUriRequest, paramHttpContext);
  }
  
  public Object executeOnHttpClientWithHandler(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest, ResponseHandler paramResponseHandler) throws IOException {
    return paramHttpClient.execute(paramHttpUriRequest, paramResponseHandler);
  }
  
  public Object executeOnHttpClientWithHandler(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest, ResponseHandler paramResponseHandler, HttpContext paramHttpContext) throws IOException {
    return paramHttpClient.execute(paramHttpUriRequest, paramResponseHandler, paramHttpContext);
  }
  
  public Object executeOnHttpClientWithHandler(DefaultHttpClient paramDefaultHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler paramResponseHandler) throws IOException {
    return paramDefaultHttpClient.execute(paramHttpHost, paramHttpRequest, paramResponseHandler, null);
  }
  
  public Object executeOnHttpClientWithHandler(DefaultHttpClient paramDefaultHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler paramResponseHandler, HttpContext paramHttpContext) throws IOException {
    return paramDefaultHttpClient.execute(paramHttpHost, paramHttpRequest, paramResponseHandler, paramHttpContext);
  }
  
  public void exitPrivateZone() {}
  
  public Map<String, String> getAPMHeaders() {
    return new HashMap<String, String>();
  }
  
  public String getCustomerId() {
    return null;
  }
  
  public String getDeviceId() {
    return null;
  }
  
  public long getIntervalOnActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter) {
    return 0L;
  }
  
  public int getResponseCodeOnHttpURLConnection(HttpURLConnection paramHttpURLConnection) throws IOException {
    return paramHttpURLConnection.getResponseCode();
  }
  
  public void ignoreView(String paramString) {}
  
  public void ignoreViews(HashSet<String> paramHashSet) {}
  
  public void init() {
    register(DummyAppMode.init(this.application));
    this.initialized = true;
  }
  
  public boolean isInPrivateZone() {
    return false;
  }
  
  public boolean isInitialized() {
    return this.initialized;
  }
  
  public boolean isScreenshotPolicyEnabled() {
    return false;
  }
  
  public void loadUrlOnWebView(WebView paramWebView, String paramString) {
    paramWebView.loadUrl(paramString);
  }
  
  @TargetApi(8)
  public void loadUrlOnWebView(WebView paramWebView, String paramString, Map<String, String> paramMap) {
    paramWebView.loadUrl(paramString, paramMap);
  }
  
  public void logNetworkEvent(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void logNetworkEvent(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CaMDOCallback paramCaMDOCallback) {}
  
  public void logNumericMetric(String paramString, Double paramDouble, Map<String, String> paramMap, CaMDOCallback paramCaMDOCallback) {}
  
  public void logTextMetric(String paramString1, String paramString2, Map<String, String> paramMap, CaMDOCallback paramCaMDOCallback) {}
  
  public void onConfigurationChangedOfApplication(Configuration paramConfiguration) {}
  
  public void onCreateOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter, Activity paramActivity) {}
  
  public void onCreateOfApplication(Application paramApplication) {}
  
  public void onLoadResourceOfWebViewClient(CaMDOWebViewClient paramCaMDOWebViewClient, WebView paramWebView, String paramString) {
    paramCaMDOWebViewClient.getMdoWebViewClient().onLoadResource(paramWebView, paramString);
  }
  
  public void onLowMemoryOfApplication() {}
  
  public void onPageFinishedOfWebViewClient(CaMDOWebViewClient paramCaMDOWebViewClient, WebView paramWebView, String paramString) {
    paramCaMDOWebViewClient.getMdoWebViewClient().onPageFinished(paramWebView, paramString);
  }
  
  public void onPageStartedOfWebViewClient(CaMDOWebViewClient paramCaMDOWebViewClient, WebView paramWebView, String paramString, Bitmap paramBitmap) {
    paramCaMDOWebViewClient.getMdoWebViewClient().onPageStarted(paramWebView, paramString, paramBitmap);
  }
  
  public void onPauseOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter, Activity paramActivity) {}
  
  public void onPauseOfFragment(Fragment paramFragment) {}
  
  public void onPauseOffragment(String paramString, Activity paramActivity) {}
  
  public void onReceivedErrorOfWebViewClient(CaMDOWebViewClient paramCaMDOWebViewClient, WebView paramWebView, int paramInt, String paramString1, String paramString2) {
    paramCaMDOWebViewClient.getMdoWebViewClient().onReceivedError(paramWebView, paramInt, paramString1, paramString2);
  }
  
  public void onRestartOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter, Activity paramActivity) {}
  
  public void onResumeOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter, Activity paramActivity) {}
  
  public void onResumeOfFragment(Fragment paramFragment) {}
  
  public void onResumeOffragment(String paramString, Activity paramActivity) {}
  
  public void onStartOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter) {}
  
  public void onStopOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter) {}
  
  public void onTerminateOfApplication() {}
  
  public void onTrimMemoryOfApplication(int paramInt) {}
  
  public void onWindowFocusChangedOfActivity(Activity paramActivity, boolean paramBoolean) {}
  
  public URLConnection openConnectionOnURLConnection(URL paramURL) throws IOException {
    return paramURL.openConnection();
  }
  
  @TargetApi(5)
  public void postUrlOnWebView(WebView paramWebView, String paramString, byte[] paramArrayOfbyte) {
    paramWebView.postUrl(paramString, paramArrayOfbyte);
  }
  
  public void registerAppFeedBackOnIntegration(BroadcastReceiver paramBroadcastReceiver) {}
  
  public void setCustomerFeedbackOnIntegration(String paramString) {}
  
  public void setCustomerId(String paramString) {}
  
  public void setCustomerLocationOnIntegration(Location paramLocation) {}
  
  public void setCustomerLocationOnIntegration(String paramString1, String paramString2) {}
  
  public void setSessionAttributeOnIntegration(String paramString1, String paramString2, String paramString3) {}
  
  public void setVisibilityOnProgressBar(ProgressBar paramProgressBar, int paramInt) {
    paramProgressBar.setVisibility(paramInt);
  }
  
  public void setWebViewClientOnWebView(WebView paramWebView, WebViewClient paramWebViewClient) {
    paramWebView.setWebViewClient(paramWebViewClient);
  }
  
  public WebResourceResponse shouldInterceptRequestOfWebViewClient(WebView paramWebView, WebViewClient paramWebViewClient, WebResourceRequest paramWebResourceRequest) {
    return null;
  }
  
  public WebResourceResponse shouldInterceptRequestOfWebViewClient(WebView paramWebView, WebViewClient paramWebViewClient, String paramString) {
    return null;
  }
  
  public void startApplicationTransactionOnIntegration(String paramString, CaMDOCallback paramCaMDOCallback) {}
  
  public void startApplicationTransactionOnIntegration(String paramString1, String paramString2, CaMDOCallback paramCaMDOCallback) {}
  
  public void startNewSession() {}
  
  public void stopApplicationTransactionOnIntegration(String paramString, CaMDOCallback paramCaMDOCallback) {}
  
  public void stopApplicationTransactionOnIntegration(String paramString1, String paramString2, CaMDOCallback paramCaMDOCallback) {}
  
  public void stopCurrentAndStartNewSession() {}
  
  public void stopCurrentSession() {}
  
  public void takeScreenshotOnIntegration(String paramString, int paramInt, CaMDOCallback paramCaMDOCallback) {}
  
  public void uploadEvents() {}
  
  public void uploadEvents(CaMDOCallback paramCaMDOCallback) {}
  
  public void viewLoaded(String paramString, int paramInt) {}
  
  public void viewLoaded(String paramString, int paramInt, Bitmap paramBitmap) {}
  
  public void viewLoaded(String paramString, int paramInt, CaMDOCallback paramCaMDOCallback) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\DummyAgentImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */