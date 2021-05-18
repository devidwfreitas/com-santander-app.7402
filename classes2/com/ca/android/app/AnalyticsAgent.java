package com.ca.android.app;

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
import com.ca.integration.CaMDOCallback;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
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

public interface AnalyticsAgent {
  void addToApmHeader(String paramString);
  
  void connectOnHttpURLConnection(HttpURLConnection paramHttpURLConnection) throws IOException;
  
  void dispatchTouchEventOfActivity(MotionEvent paramMotionEvent);
  
  void enterPrivateZone();
  
  HttpResponse executeOnHttpClient(AndroidHttpClient paramAndroidHttpClient, HttpUriRequest paramHttpUriRequest) throws IOException;
  
  HttpResponse executeOnHttpClient(HttpClient paramHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest) throws IOException;
  
  HttpResponse executeOnHttpClient(HttpClient paramHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext) throws IOException;
  
  HttpResponse executeOnHttpClient(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest) throws IOException;
  
  HttpResponse executeOnHttpClient(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext) throws IOException;
  
  HttpResponse executeOnHttpClient(AbstractHttpClient paramAbstractHttpClient, HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext) throws IOException;
  
  HttpResponse executeOnHttpClient(DefaultHttpClient paramDefaultHttpClient, HttpUriRequest paramHttpUriRequest) throws IOException;
  
  HttpResponse executeOnHttpClient(DefaultHttpClient paramDefaultHttpClient, HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext) throws IOException;
  
  Object executeOnHttpClientWithHandler(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest, ResponseHandler paramResponseHandler) throws IOException;
  
  Object executeOnHttpClientWithHandler(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest, ResponseHandler paramResponseHandler, HttpContext paramHttpContext) throws IOException;
  
  Object executeOnHttpClientWithHandler(DefaultHttpClient paramDefaultHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler paramResponseHandler) throws IOException;
  
  Object executeOnHttpClientWithHandler(DefaultHttpClient paramDefaultHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler paramResponseHandler, HttpContext paramHttpContext) throws IOException;
  
  void exitPrivateZone();
  
  Map<String, String> getAPMHeaders();
  
  String getCustomerId();
  
  String getDeviceId();
  
  long getIntervalOnActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter);
  
  int getResponseCodeOnHttpURLConnection(HttpURLConnection paramHttpURLConnection) throws IOException;
  
  void ignoreView(String paramString);
  
  void ignoreViews(HashSet<String> paramHashSet);
  
  void init();
  
  boolean isInPrivateZone();
  
  boolean isInitialized();
  
  boolean isScreenshotPolicyEnabled();
  
  void loadUrlOnWebView(WebView paramWebView, String paramString);
  
  void loadUrlOnWebView(WebView paramWebView, String paramString, Map<String, String> paramMap);
  
  void logNetworkEvent(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  void logNetworkEvent(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CaMDOCallback paramCaMDOCallback);
  
  void logNumericMetric(String paramString, Double paramDouble, Map<String, String> paramMap, CaMDOCallback paramCaMDOCallback);
  
  void logTextMetric(String paramString1, String paramString2, Map<String, String> paramMap, CaMDOCallback paramCaMDOCallback);
  
  void onConfigurationChangedOfApplication(Configuration paramConfiguration);
  
  void onCreateOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter, Activity paramActivity);
  
  void onCreateOfApplication(Application paramApplication);
  
  void onLoadResourceOfWebViewClient(CaMDOWebViewClient paramCaMDOWebViewClient, WebView paramWebView, String paramString);
  
  void onLowMemoryOfApplication();
  
  void onPageFinishedOfWebViewClient(CaMDOWebViewClient paramCaMDOWebViewClient, WebView paramWebView, String paramString);
  
  void onPageStartedOfWebViewClient(CaMDOWebViewClient paramCaMDOWebViewClient, WebView paramWebView, String paramString, Bitmap paramBitmap);
  
  void onPauseOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter, Activity paramActivity);
  
  void onPauseOfFragment(Fragment paramFragment);
  
  void onPauseOffragment(String paramString, Activity paramActivity);
  
  void onReceivedErrorOfWebViewClient(CaMDOWebViewClient paramCaMDOWebViewClient, WebView paramWebView, int paramInt, String paramString1, String paramString2);
  
  void onRestartOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter, Activity paramActivity);
  
  void onResumeOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter, Activity paramActivity);
  
  void onResumeOfFragment(Fragment paramFragment);
  
  void onResumeOffragment(String paramString, Activity paramActivity);
  
  void onStartOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter);
  
  void onStopOfActivity(ScreenLoadTimeMeter paramScreenLoadTimeMeter);
  
  void onTerminateOfApplication();
  
  void onTrimMemoryOfApplication(int paramInt);
  
  void onWindowFocusChangedOfActivity(Activity paramActivity, boolean paramBoolean);
  
  URLConnection openConnectionOnURLConnection(URL paramURL) throws IOException;
  
  void pause();
  
  void postUrlOnWebView(WebView paramWebView, String paramString, byte[] paramArrayOfbyte);
  
  void registerAppFeedBackOnIntegration(BroadcastReceiver paramBroadcastReceiver);
  
  void resume();
  
  void setCustomerFeedbackOnIntegration(String paramString);
  
  void setCustomerId(String paramString);
  
  void setCustomerLocationOnIntegration(Location paramLocation);
  
  void setCustomerLocationOnIntegration(String paramString1, String paramString2);
  
  void setSessionAttributeOnIntegration(String paramString1, String paramString2, String paramString3);
  
  void setVisibilityOnProgressBar(ProgressBar paramProgressBar, int paramInt);
  
  void setWebViewClientOnWebView(WebView paramWebView, WebViewClient paramWebViewClient);
  
  WebResourceResponse shouldInterceptRequestOfWebViewClient(WebView paramWebView, WebViewClient paramWebViewClient, WebResourceRequest paramWebResourceRequest);
  
  WebResourceResponse shouldInterceptRequestOfWebViewClient(WebView paramWebView, WebViewClient paramWebViewClient, String paramString);
  
  void startApplicationTransactionOnIntegration(String paramString, CaMDOCallback paramCaMDOCallback);
  
  void startApplicationTransactionOnIntegration(String paramString1, String paramString2, CaMDOCallback paramCaMDOCallback);
  
  void startNewSession();
  
  void stopApplicationTransactionOnIntegration(String paramString, CaMDOCallback paramCaMDOCallback);
  
  void stopApplicationTransactionOnIntegration(String paramString1, String paramString2, CaMDOCallback paramCaMDOCallback);
  
  void stopCurrentAndStartNewSession();
  
  void stopCurrentSession();
  
  void takeScreenshotOnIntegration(String paramString, int paramInt, CaMDOCallback paramCaMDOCallback);
  
  void uploadEvents();
  
  void uploadEvents(CaMDOCallback paramCaMDOCallback);
  
  void viewLoaded(String paramString, int paramInt);
  
  void viewLoaded(String paramString, int paramInt, Bitmap paramBitmap);
  
  void viewLoaded(String paramString, int paramInt, CaMDOCallback paramCaMDOCallback);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\android\app\AnalyticsAgent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */