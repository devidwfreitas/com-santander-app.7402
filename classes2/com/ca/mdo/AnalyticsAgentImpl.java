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
import com.ca.org.acra.ACRA;
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
import org.json.JSONException;
import org.json.JSONObject;

public class AnalyticsAgentImpl extends DefaultAnalyticsAgentImpl {
  private boolean initialized = false;
  
  public AnalyticsAgentImpl(Application paramApplication) {
    register(paramApplication);
  }
  
  @TargetApi(16)
  public void addLifeCycles() {
    try {
      register(AppMode.init(this.application));
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent addLifeCycles() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void addToApmHeader(String paramString) {
    CAMobileDevOps.addToAPMHeaders(paramString);
  }
  
  public void connectOnHttpURLConnection(HttpURLConnection paramHttpURLConnection) throws IOException {
    try {
      CaMDOHTTPClientImpl.connect(paramHttpURLConnection);
      return;
    } catch (IOException iOException) {
      throw iOException;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent connectOnHttpURLConnection() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void dispatchTouchEventOfActivity(MotionEvent paramMotionEvent) {
    try {
      CaMDOActivityImpl.dispatchTouchEvent(paramMotionEvent);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent dispatchTouchEventOfActivity() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void enterPrivateZone() {
    try {
      CAMobileDevOps.enterPrivateZone();
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent enterPrivateZone() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public HttpResponse executeOnHttpClient(AndroidHttpClient paramAndroidHttpClient, HttpUriRequest paramHttpUriRequest) throws IOException {
    try {
      return CaMDOHTTPClientImpl.execute(paramAndroidHttpClient, paramHttpUriRequest);
    } catch (IOException iOException) {
      throw iOException;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent executeOnHttpClient() :" + throwable.getLocalizedMessage());
      return null;
    } 
  }
  
  public HttpResponse executeOnHttpClient(HttpClient paramHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest) throws IOException {
    try {
      return CaMDOHTTPClientImpl.execute(paramHttpClient, paramHttpHost, paramHttpRequest);
    } catch (IOException iOException) {
      throw iOException;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent executeOnHttpClient() :" + throwable.getLocalizedMessage());
      return null;
    } 
  }
  
  public HttpResponse executeOnHttpClient(HttpClient paramHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext) throws IOException {
    try {
      return CaMDOHTTPClientImpl.execute(paramHttpClient, paramHttpHost, paramHttpRequest, paramHttpContext);
    } catch (IOException iOException) {
      throw iOException;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent executeOnHttpClient() :" + throwable.getLocalizedMessage());
      return null;
    } 
  }
  
  public HttpResponse executeOnHttpClient(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest) throws IOException {
    try {
      return CaMDOHTTPClientImpl.execute(paramHttpClient, paramHttpUriRequest);
    } catch (IOException iOException) {
      throw iOException;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent executeOnHttpClient() :" + throwable.getLocalizedMessage());
      return null;
    } 
  }
  
  public HttpResponse executeOnHttpClient(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext) throws IOException {
    try {
      return CaMDOHTTPClientImpl.execute(paramHttpClient, paramHttpUriRequest, paramHttpContext);
    } catch (IOException iOException) {
      throw iOException;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent executeOnHttpClient() :" + throwable.getLocalizedMessage());
      return null;
    } 
  }
  
  public HttpResponse executeOnHttpClient(AbstractHttpClient paramAbstractHttpClient, HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext) throws IOException {
    try {
      return CaMDOHTTPClientImpl.execute(paramAbstractHttpClient, paramHttpUriRequest, paramHttpContext);
    } catch (IOException iOException) {
      throw iOException;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent executeOnHttpClient() :" + throwable.getLocalizedMessage());
      return null;
    } 
  }
  
  public HttpResponse executeOnHttpClient(DefaultHttpClient paramDefaultHttpClient, HttpUriRequest paramHttpUriRequest) throws IOException {
    try {
      return CaMDOHTTPClientImpl.execute(paramDefaultHttpClient, paramHttpUriRequest);
    } catch (IOException iOException) {
      throw iOException;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent executeOnHttpClient() :" + throwable.getLocalizedMessage());
      return null;
    } 
  }
  
  public HttpResponse executeOnHttpClient(DefaultHttpClient paramDefaultHttpClient, HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext) throws IOException {
    try {
      return CaMDOHTTPClientImpl.execute(paramDefaultHttpClient, paramHttpUriRequest, paramHttpContext);
    } catch (IOException iOException) {
      throw iOException;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent executeOnHttpClient() :" + throwable.getLocalizedMessage());
      return null;
    } 
  }
  
  public Object executeOnHttpClientWithHandler(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest, ResponseHandler paramResponseHandler) throws IOException {
    try {
      return CaMDOHTTPClientImpl.execute(paramHttpClient, paramHttpUriRequest, paramResponseHandler);
    } catch (IOException iOException) {
      throw iOException;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent executeOnHttpClientWithHandler() :" + throwable.getLocalizedMessage());
      return null;
    } 
  }
  
  public Object executeOnHttpClientWithHandler(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest, ResponseHandler paramResponseHandler, HttpContext paramHttpContext) throws IOException {
    try {
      return CaMDOHTTPClientImpl.execute(paramHttpClient, paramHttpUriRequest, paramResponseHandler, paramHttpContext);
    } catch (IOException iOException) {
      throw iOException;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent executeOnHttpClientWithHandler() :" + throwable.getLocalizedMessage());
      return null;
    } 
  }
  
  public Object executeOnHttpClientWithHandler(DefaultHttpClient paramDefaultHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler paramResponseHandler) throws IOException {
    try {
      return CaMDOHTTPClientImpl.execute(paramDefaultHttpClient, paramHttpHost, paramHttpRequest, paramResponseHandler, null);
    } catch (IOException iOException) {
      throw iOException;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent executeOnHttpClientWithHandler() :" + throwable.getLocalizedMessage());
      return null;
    } 
  }
  
  public Object executeOnHttpClientWithHandler(DefaultHttpClient paramDefaultHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler paramResponseHandler, HttpContext paramHttpContext) throws IOException {
    try {
      return CaMDOHTTPClientImpl.execute(paramDefaultHttpClient, paramHttpHost, paramHttpRequest, paramResponseHandler, paramHttpContext);
    } catch (IOException iOException) {
      throw iOException;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent executeOnHttpClientWithHandler() :" + throwable.getLocalizedMessage());
      return null;
    } 
  }
  
  public void exitPrivateZone() {
    try {
      CAMobileDevOps.exitPrivateZone();
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent exitPrivateZone() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public Map<String, String> getAPMHeaders() {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("x-apm-bt", AppDeviceData.getAPMHeader());
    return (Map)hashMap;
  }
  
  public String getCustomerId() {
    return CAMobileDevOps.getCustomerId();
  }
  
  public String getDeviceId() {
    return CAMobileDevOps.getDeviceID();
  }
  
  public long getIntervalOnActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter) {
    try {
      return CaMDOActivityImpl.getInterval(paramScreenLoadTimeMeter);
    } catch (Throwable throwable) {
      CALog.e("Error in Agent getIntervalOnActivity() :" + throwable.getLocalizedMessage());
      return 0L;
    } 
  }
  
  public int getResponseCodeOnHttpURLConnection(HttpURLConnection paramHttpURLConnection) throws IOException {
    try {
      return CaMDOHTTPClientImpl.getResponseCode(paramHttpURLConnection);
    } catch (Throwable throwable) {
      CALog.e("Error in Agent getResponseCodeOnHttpURLConnection() :" + throwable.getLocalizedMessage());
      return 0;
    } 
  }
  
  public void ignoreView(String paramString) {
    CAMobileDevOps.addToIngoredList(paramString);
  }
  
  public void ignoreViews(HashSet<String> paramHashSet) {
    CAMobileDevOps.addToIngoredList(paramHashSet);
  }
  
  public void init() {
    try {
      addLifeCycles();
      CAMobileDevOps.initialize(this.application);
      this.initialized = true;
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent init() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public boolean isInPrivateZone() {
    try {
      return CAMobileDevOps.isInPrivateZone();
    } catch (Throwable throwable) {
      CALog.e("Error in Agent isInPrivateZone() :" + throwable.getLocalizedMessage());
      return false;
    } 
  }
  
  public boolean isInitialized() {
    return this.initialized;
  }
  
  public boolean isScreenshotPolicyEnabled() {
    try {
      return CAMobileDevOps.isScreenshotPolicyEnabled();
    } catch (Throwable throwable) {
      CALog.e("Error in Agent isScreenshotPolicyEnabled() :" + throwable.getLocalizedMessage());
      return false;
    } 
  }
  
  public void loadUrlOnWebView(WebView paramWebView, String paramString) {
    try {
      CaMDOWebViewImpl.loadUrl(paramWebView, paramString);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent loadUrlOnWebView() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void loadUrlOnWebView(WebView paramWebView, String paramString, Map<String, String> paramMap) {
    try {
      CaMDOWebViewImpl.loadUrl(paramWebView, paramString, paramMap);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent loadUrlOnWebView() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void logNetworkEvent(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    long l1 = paramInt2;
    long l2 = paramInt3;
    long l3 = paramInt4;
    try {
      CAMobileDevOps.httpPerformance(CAMobileDevOps.getNetworkData(paramString, paramInt1, l1, l2, l3, null, null, null, null));
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent logNetworkEvent() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void logNetworkEvent(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CaMDOCallback paramCaMDOCallback) {
    long l1 = paramInt2;
    long l2 = paramInt3;
    long l3 = paramInt4;
    try {
      CAMobileDevOps.httpPerformance(CAMobileDevOps.getNetworkData(paramString, paramInt1, l1, l2, l3, paramCaMDOCallback, null, null, null));
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent logNetworkEvent() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void logNumericMetric(String paramString, Double paramDouble, Map<String, String> paramMap, CaMDOCallback paramCaMDOCallback) {
    try {
      CAMobileDevOps.logNumericMetric(paramString, paramDouble, paramMap, paramCaMDOCallback);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent uploadEvent() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void logTextMetric(String paramString1, String paramString2, Map<String, String> paramMap, CaMDOCallback paramCaMDOCallback) {
    try {
      CAMobileDevOps.logTextMetric(paramString1, paramString2, paramMap, paramCaMDOCallback);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent uploadEvent() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onConfigurationChangedOfApplication(Configuration paramConfiguration) {
    try {
      CaMDOApplicationImpl.onConfigurationChanged(paramConfiguration);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onConfigurationChangedOfApplication() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onCreateOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter, Activity paramActivity) {
    try {
      CaMDOActivityImpl.onCreate(paramScreenLoadTimeMeter, paramActivity);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onCreateOfActivity() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onCreateOfApplication(Application paramApplication) {
    try {
      CaMDOApplicationImpl.onCreate(paramApplication);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onCreateOfApplication() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onLoadResourceOfWebViewClient(CaMDOWebViewClient paramCaMDOWebViewClient, WebView paramWebView, String paramString) {
    try {
      CaMDOWebViewClientImpl.onLoadResource(paramCaMDOWebViewClient, paramWebView, paramString);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onLoadResourceOfWebViewClient() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onLowMemoryOfApplication() {
    try {
      CALog.i("Low memory application called");
      CAMobileDevOps.onLowMemoryOfApplication();
      CaMDOApplicationImpl.onLowMemory();
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onLowMemoryOfApplication() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onPageFinishedOfWebViewClient(CaMDOWebViewClient paramCaMDOWebViewClient, WebView paramWebView, String paramString) {
    try {
      CaMDOWebViewClientImpl.onPageFinished(paramCaMDOWebViewClient, paramWebView, paramString);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onPageFinishedOfWebViewClient() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onPageStartedOfWebViewClient(CaMDOWebViewClient paramCaMDOWebViewClient, WebView paramWebView, String paramString, Bitmap paramBitmap) {
    try {
      CaMDOWebViewClientImpl.onPageStarted(paramCaMDOWebViewClient, paramWebView, paramString, paramBitmap);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onPageStartedOfWebViewClient() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onPauseOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter, Activity paramActivity) {
    try {
      CaMDOActivityImpl.onPause(paramScreenLoadTimeMeter, paramActivity);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onPauseOfActivity() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onPauseOfFragment(Fragment paramFragment) {
    try {
      CaMDOFragmentImpl.onPause(paramFragment);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onPauseOfFragment() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onPauseOffragment(String paramString, Activity paramActivity) {
    try {
      CAMobileDevOps.fragmentPause(paramString, paramActivity);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onPauseOfFragment() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onReceivedErrorOfWebViewClient(CaMDOWebViewClient paramCaMDOWebViewClient, WebView paramWebView, int paramInt, String paramString1, String paramString2) {
    try {
      CaMDOWebViewClientImpl.onReceivedError(paramCaMDOWebViewClient, paramWebView, paramInt, paramString1, paramString2);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onReceivedErrorOfWebViewClient() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onRestartOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter, Activity paramActivity) {
    try {
      CaMDOActivityImpl.onRestart(paramScreenLoadTimeMeter, paramActivity);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onRestartOfActivity() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onResumeOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter, Activity paramActivity) {
    try {
      CaMDOActivityImpl.onResume(paramScreenLoadTimeMeter, paramActivity);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onResumeOfActivity() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onResumeOfFragment(Fragment paramFragment) {
    try {
      CaMDOFragmentImpl.onResume(paramFragment);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onResumeOfFragment() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onResumeOffragment(String paramString, Activity paramActivity) {
    try {
      CAMobileDevOps.fragmentResume(paramString, paramActivity);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onResumeOfFragment() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onStartOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter) {
    try {
      CaMDOActivityImpl.onStart(paramScreenLoadTimeMeter);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onStartOfActivity() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onStopOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter) {
    try {
      CaMDOActivityImpl.onStop(paramScreenLoadTimeMeter);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onStopOfActivity() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onTerminateOfApplication() {
    try {
      CaMDOApplicationImpl.onTerminate();
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onTerminateOfApplication() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onTrimMemoryOfApplication(int paramInt) {
    try {
      CaMDOApplicationImpl.onTrimMemory(paramInt);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onTrimMemoryOfApplication() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void onWindowFocusChangedOfActivity(Activity paramActivity, boolean paramBoolean) {
    try {
      CaMDOActivityImpl.onWindowFocusChanged(paramActivity, paramBoolean);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent onWindowFocusChangedOfActivity() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public URLConnection openConnectionOnURLConnection(URL paramURL) throws IOException {
    try {
      return CaMDOHTTPClientImpl.openConnection(paramURL);
    } catch (Throwable throwable) {
      CALog.e("Error in Agent openConnectionOnURLConnection() :" + throwable.getLocalizedMessage());
      return null;
    } 
  }
  
  @TargetApi(14)
  public void pause() {
    try {
      super.pause();
      ACRA.getACRASharedPreferences().edit().putBoolean("acra.disable", true).commit();
      CAMobileDevOps.sdkDisabledEvent();
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent pause() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void postUrlOnWebView(WebView paramWebView, String paramString, byte[] paramArrayOfbyte) {
    try {
      CaMDOWebViewImpl.postUrl(paramWebView, paramString, paramArrayOfbyte);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent postUrlOnWebView() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void registerAppFeedBackOnIntegration(BroadcastReceiver paramBroadcastReceiver) {
    try {
      CAMobileDevOps.registerAppFeedBack(paramBroadcastReceiver);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent registerAppFeedBackOnIntegration() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  @TargetApi(14)
  public void resume() {
    try {
      super.resume();
      ACRA.getACRASharedPreferences().edit().putBoolean("acra.disable", false).commit();
      ACRA.getErrorReporter().setReportSender(new DevOpsReporterSender());
      SDK.firstLaunch = true;
      JSONObject jSONObject = new JSONObject();
      try {
        jSONObject.put("SDK_GOT_ENABLED", true);
        HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
        hashMap.put("jsonObj", jSONObject);
        hashMap.put("currentTimeStamp", Long.valueOf(System.currentTimeMillis()));
        CAMobileDevOps.sendSessionStart(1, (Map)hashMap);
        return;
      } catch (JSONException jSONException) {
        CALog.e("Exception while building event-data for session start");
        return;
      } 
    } catch (Throwable throwable) {
      CALog.e("Error in Agent resume() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void setCustomerFeedbackOnIntegration(String paramString) {
    try {
      CAMobileDevOps.setCustomerFeedback(paramString);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent setCustomerFeedbackOnIntegration() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void setCustomerId(String paramString) {
    CAMobileDevOps.setSessionAttribute("customerId", "customerId", paramString);
  }
  
  public void setCustomerLocationOnIntegration(Location paramLocation) {
    try {
      CAMobileDevOps.setCustomerLocation(paramLocation);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent setCustomerLocationOnIntegration() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void setCustomerLocationOnIntegration(String paramString1, String paramString2) {
    try {
      CAMobileDevOps.setCustomerLocation(paramString1, paramString2);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent setCustomerLocationOnIntegration() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void setSessionAttributeOnIntegration(String paramString1, String paramString2, String paramString3) {
    try {
      CAMobileDevOps.setSessionAttribute(paramString1, paramString2, paramString3);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent setSessionAttributeOnIntegration() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void setVisibilityOnProgressBar(ProgressBar paramProgressBar, int paramInt) {
    try {
      CaMDOProgressBarImpl.setVisibility(paramProgressBar, paramInt);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent setVisibilityOnProgressBar() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void setWebViewClientOnWebView(WebView paramWebView, WebViewClient paramWebViewClient) {
    try {
      CaMDOWebViewImpl.setWebViewClient(paramWebView, paramWebViewClient);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent setWebViewClientOnWebView() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public WebResourceResponse shouldInterceptRequestOfWebViewClient(WebView paramWebView, WebViewClient paramWebViewClient, WebResourceRequest paramWebResourceRequest) {
    try {
      return CaMDOWebViewClientImpl.shouldInterceptRequest(paramWebView, paramWebViewClient, paramWebResourceRequest);
    } catch (Throwable throwable) {
      CALog.e("Error in Agent shouldInterceptRequestOfWebViewClient(WebView, WebViewClient, WebResourceRequest) :" + throwable.getLocalizedMessage());
      return null;
    } 
  }
  
  public WebResourceResponse shouldInterceptRequestOfWebViewClient(WebView paramWebView, WebViewClient paramWebViewClient, String paramString) {
    try {
      return CaMDOWebViewClientImpl.shouldInterceptRequest(paramWebView, paramWebViewClient, paramString);
    } catch (Throwable throwable) {
      CALog.e("Error in Agent shouldInterceptRequestOfWebViewClient((WebView, WebViewClient, String) :" + throwable.getLocalizedMessage());
      return null;
    } 
  }
  
  public void startApplicationTransactionOnIntegration(String paramString, CaMDOCallback paramCaMDOCallback) {
    try {
      CAMobileDevOps.startApplicationTransaction(paramString, paramCaMDOCallback);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent startApplicationTransactionOnIntegration(" + paramString + ") :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void startApplicationTransactionOnIntegration(String paramString1, String paramString2, CaMDOCallback paramCaMDOCallback) {
    try {
      CAMobileDevOps.startApplicationTransaction(paramString1, paramString2, paramCaMDOCallback);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent startApplicationTransactionOnIntegration(" + paramString1 + "," + paramString2 + ") :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void startNewSession() {
    try {
      CAMobileDevOps.startNewSession();
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent startNewSession() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void stopApplicationTransactionOnIntegration(String paramString, CaMDOCallback paramCaMDOCallback) {
    try {
      CAMobileDevOps.stopApplicationTransaction(paramString, paramCaMDOCallback);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent stopApplicationTransactionOnIntegration(" + paramString + ") :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void stopApplicationTransactionOnIntegration(String paramString1, String paramString2, CaMDOCallback paramCaMDOCallback) {
    try {
      CAMobileDevOps.stopApplicationTransaction(paramString1, paramString2, paramCaMDOCallback);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent Failure Txn :  stopApplicationTransactionOnIntegration(" + paramString1 + "," + paramString2 + ") :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void stopCurrentAndStartNewSession() {
    try {
      CAMobileDevOps.stopCurrentAndStartNewSession();
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent stopCurrentAndStartNewSession() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void stopCurrentSession() {
    try {
      CAMobileDevOps.stopCurrentSession();
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent stopCurrentSession() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void takeScreenshotOnIntegration(String paramString, int paramInt, CaMDOCallback paramCaMDOCallback) {
    try {
      CAMobileDevOps.takeScreenshotOfCurrentActivity(paramString, paramInt, paramCaMDOCallback, null);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent takeScreenshotOnIntegration() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void uploadEvents() {
    try {
      CAMobileDevOps.sendMessage(251, null);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent uploadEvent() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void uploadEvents(CaMDOCallback paramCaMDOCallback) {
    try {
      CAMobileDevOps.sendMessage(251, null, paramCaMDOCallback);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent uploadEvent() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void viewLoaded(String paramString, int paramInt) {
    long l = paramInt;
    try {
      CAMobileDevOps.viewLoaded(paramString, l);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent viewLoaded() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void viewLoaded(String paramString, int paramInt, Bitmap paramBitmap) {
    long l = paramInt;
    try {
      CAMobileDevOps.viewLoaded(paramString, l, null, paramBitmap);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent viewLoaded() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
  
  public void viewLoaded(String paramString, int paramInt, CaMDOCallback paramCaMDOCallback) {
    long l = paramInt;
    try {
      CAMobileDevOps.viewLoaded(paramString, l, paramCaMDOCallback);
      return;
    } catch (Throwable throwable) {
      CALog.e("Error in Agent viewLoaded() :" + throwable.getLocalizedMessage());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\AnalyticsAgentImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */