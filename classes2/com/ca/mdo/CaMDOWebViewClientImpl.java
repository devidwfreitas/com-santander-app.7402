package com.ca.mdo;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.TrafficStats;
import android.os.Process;
import android.util.Base64;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ca.android.app.CaMDOWebViewClient;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.util.Arrays;
import java.util.HashSet;

@TargetApi(11)
class CaMDOWebViewClientImpl {
  private static String INTERCEPTER_SCRIPT;
  
  private static HashSet<String> interceptedUrls;
  
  private static boolean isJSInterceptionDisabled;
  
  private static HashSet<String> knownResourceExtensions;
  
  private static int uid = Process.myUid();
  
  static {
    isJSInterceptionDisabled = false;
    interceptedUrls = new HashSet<String>();
    knownResourceExtensions = new HashSet<String>(Arrays.asList(new String[] { 
            "jpg", "jpeg", "png", "svg", "css", "js", "gif", "ico", "tif", "tiff", 
            "bmp", "bmpf", "cur", "xbm", "svg", "img", "css", "woff" }));
  }
  
  private static void injectScriptFile(WebView paramWebView, String paramString) {
    InputStream inputStream5 = null;
    InputStream inputStream6 = null;
    InputStream inputStream4 = null;
    InputStream inputStream3 = inputStream4;
    InputStream inputStream2 = inputStream5;
    InputStream inputStream1 = inputStream6;
    try {
      if (!isJSInterceptionDisabled) {
        inputStream3 = inputStream4;
        inputStream2 = inputStream5;
        inputStream1 = inputStream6;
        if (INTERCEPTER_SCRIPT == null) {
          inputStream2 = inputStream5;
          inputStream1 = inputStream6;
          inputStream3 = SDK.getApp().getAssets().open(paramString);
          inputStream2 = inputStream3;
          inputStream1 = inputStream3;
          byte[] arrayOfByte = new byte[inputStream3.available()];
          inputStream2 = inputStream3;
          inputStream1 = inputStream3;
          inputStream3.read(arrayOfByte);
          inputStream2 = inputStream3;
          inputStream1 = inputStream3;
          inputStream3.close();
          inputStream2 = inputStream3;
          inputStream1 = inputStream3;
          INTERCEPTER_SCRIPT = Base64.encodeToString(arrayOfByte, 2);
        } 
      } 
      inputStream2 = inputStream3;
      inputStream1 = inputStream3;
      if (!isJSInterceptionDisabled) {
        inputStream2 = inputStream3;
        inputStream1 = inputStream3;
        paramWebView.loadUrl("javascript:(function() {var parent = document.getElementsByTagName('head').item(0);var script = document.createElement('script');script.type = 'text/javascript';script.innerHTML = window.atob('" + INTERCEPTER_SCRIPT + "');parent.appendChild(script)})()");
      } 
      return;
    } catch (IOException iOException) {
      inputStream1 = inputStream2;
      isJSInterceptionDisabled = true;
      inputStream1 = inputStream2;
      CALog.e("Exception while injecting script" + iOException, iOException);
      return;
    } finally {
      if (inputStream1 != null)
        try {
          inputStream1.close();
        } catch (Exception exception) {} 
    } 
  }
  
  private static boolean isResource(String paramString) {
    boolean bool2 = false;
    String str = null;
    boolean bool1 = bool2;
    if (paramString != null) {
      String str1 = paramString.substring(paramString.lastIndexOf("/") + 1);
      paramString = str;
      if (str1 != null) {
        int i = str1.lastIndexOf(".");
        paramString = str;
        if (i > 0) {
          str = str1.substring(i + 1);
          paramString = str;
          if (str.contains("?"))
            paramString = str.split("/?")[0]; 
        } 
      } 
      bool1 = bool2;
      if (paramString != null)
        bool1 = knownResourceExtensions.contains(paramString); 
    } 
    return bool1;
  }
  
  private static boolean isSupportedUrl(String paramString) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramString != null) {
      paramString = URI.create(paramString).getScheme();
      bool1 = bool2;
      if (paramString != null) {
        if ("http".equals(paramString) || "https".equals(paramString) || "file".equals(paramString))
          return true; 
      } else {
        return bool1;
      } 
    } else {
      return bool1;
    } 
    return false;
  }
  
  static void onLoadResource(CaMDOWebViewClient paramCaMDOWebViewClient, WebView paramWebView, String paramString) {
    long l2 = 0L;
    long l3 = 0L;
    long l4 = 0L;
    null = paramCaMDOWebViewClient.getMdoWebViewClient();
    if (null != null) {
      null.onLoadResource(paramWebView, paramString);
      return;
    } 
    long l1 = l3;
    try {
      long l5 = System.currentTimeMillis();
      l1 = l3;
      l2 = l5;
      l3 = TrafficStats.getUidRxBytes(uid);
      l1 = l3;
      l2 = l5;
      long l6 = TrafficStats.getUidTxBytes(uid);
      l2 = l6;
      paramCaMDOWebViewClient.onLoadResourceDefaultImpl(paramWebView, paramString);
      l1 = l3;
    } catch (Throwable throwable) {
      paramCaMDOWebViewClient.onLoadResourceDefaultImpl(paramWebView, paramString);
      long l = l2;
      l2 = l4;
    } finally {
      paramCaMDOWebViewClient.onLoadResourceDefaultImpl(paramWebView, paramString);
    } 
  }
  
  static void onPageFinished(CaMDOWebViewClient paramCaMDOWebViewClient, WebView paramWebView, String paramString) {
    WebViewClient webViewClient = paramCaMDOWebViewClient.getMdoWebViewClient();
    if (webViewClient != null)
      webViewClient.onPageFinished(paramWebView, paramString); 
    try {
      CALog.d("onPageFinished(" + paramString + ")");
      CAMobileDevOps.webViewOnPageEvent(paramString, "page_end");
      return;
    } catch (Throwable throwable) {
      CALog.e("onPageFinished: failed", throwable);
      return;
    } 
  }
  
  static void onPageStarted(CaMDOWebViewClient paramCaMDOWebViewClient, WebView paramWebView, String paramString, Bitmap paramBitmap) {
    injectScriptFile(paramWebView, "CaMDOInterceptor.js");
    WebViewClient webViewClient = paramCaMDOWebViewClient.getMdoWebViewClient();
    if (webViewClient != null)
      webViewClient.onPageStarted(paramWebView, paramString, paramBitmap); 
    try {
      CALog.d("onPageStarted(" + paramString + ")");
      CAMobileDevOps.webViewOnPageEvent(paramString, "page_start");
      return;
    } catch (Throwable throwable) {
      CALog.e("onPageStarted: failed", throwable);
      return;
    } 
  }
  
  static void onReceivedError(CaMDOWebViewClient paramCaMDOWebViewClient, WebView paramWebView, int paramInt, String paramString1, String paramString2) {
    WebViewClient webViewClient = paramCaMDOWebViewClient.getMdoWebViewClient();
    if (webViewClient != null)
      webViewClient.onReceivedError(paramWebView, paramInt, paramString1, paramString2); 
    CALog.e("onReceivedError: Error code=" + paramInt + " Description=" + paramString1 + " URL=" + paramString2);
  }
  
  @TargetApi(21)
  private static WebResourceResponse shoudlInterceptByOrgWebviewClient(WebView paramWebView, WebViewClient paramWebViewClient, WebResourceRequest paramWebResourceRequest) {
    WebResourceResponse webResourceResponse;
    long l2 = System.currentTimeMillis();
    long l3 = 0L;
    long l4 = 0L;
    long l1 = l3;
    try {
      long l5 = System.currentTimeMillis();
      l1 = l3;
      l2 = l5;
      l3 = TrafficStats.getUidRxBytes(uid);
      l1 = l3;
      l2 = l5;
      long l6 = TrafficStats.getUidTxBytes(uid);
      l2 = l6;
      webResourceResponse = paramWebViewClient.shouldInterceptRequest(paramWebView, paramWebResourceRequest);
      l1 = l3;
    } catch (Throwable throwable) {
      CALog.e("Exception :" + throwable);
      webResourceResponse = paramWebViewClient.shouldInterceptRequest((WebView)webResourceResponse, paramWebResourceRequest);
      long l = l2;
      l2 = l4;
    } finally {
      paramWebViewClient.shouldInterceptRequest((WebView)webResourceResponse, paramWebResourceRequest);
    } 
  }
  
  private static WebResourceResponse shoudlInterceptByOrgWebviewClient(WebView paramWebView, WebViewClient paramWebViewClient, String paramString) {
    WebResourceResponse webResourceResponse;
    long l2 = System.currentTimeMillis();
    long l3 = 0L;
    long l4 = 0L;
    long l1 = l3;
    try {
      long l5 = System.currentTimeMillis();
      l1 = l3;
      l2 = l5;
      l3 = TrafficStats.getUidRxBytes(uid);
      l1 = l3;
      l2 = l5;
      long l6 = TrafficStats.getUidTxBytes(uid);
      l2 = l6;
      webResourceResponse = paramWebViewClient.shouldInterceptRequest(paramWebView, paramString);
      l1 = l3;
    } catch (Throwable throwable) {
      CALog.e("Exception :" + throwable);
      webResourceResponse = paramWebViewClient.shouldInterceptRequest((WebView)webResourceResponse, paramString);
      long l = l2;
      l2 = l4;
    } finally {
      paramWebViewClient.shouldInterceptRequest((WebView)webResourceResponse, paramString);
    } 
  }
  
  @TargetApi(21)
  static WebResourceResponse shouldInterceptRequest(WebView paramWebView, WebViewClient paramWebViewClient, WebResourceRequest paramWebResourceRequest) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #4
    //   3: aload_2
    //   4: invokeinterface getUrl : ()Landroid/net/Uri;
    //   9: invokevirtual toString : ()Ljava/lang/String;
    //   12: astore #5
    //   14: getstatic com/ca/mdo/CaMDOWebViewClientImpl.isJSInterceptionDisabled : Z
    //   17: ifeq -> 29
    //   20: aload_0
    //   21: aload_1
    //   22: aload_2
    //   23: invokestatic shouldInterceptRequestWhenJSIntegrationDisabled : (Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    //   26: astore_0
    //   27: aload_0
    //   28: areturn
    //   29: aload_1
    //   30: ifnull -> 40
    //   33: aload_0
    //   34: aload_1
    //   35: aload_2
    //   36: invokestatic shoudlInterceptByOrgWebviewClient : (Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    //   39: areturn
    //   40: aload #4
    //   42: astore_0
    //   43: aload #5
    //   45: invokestatic isSupportedUrl : (Ljava/lang/String;)Z
    //   48: ifeq -> 27
    //   51: aload #5
    //   53: ifnull -> 226
    //   56: getstatic com/ca/android/app/JSCaMDOIntegration.formRequests : Ljava/util/Map;
    //   59: aload #5
    //   61: invokeinterface containsKey : (Ljava/lang/Object;)Z
    //   66: ifeq -> 226
    //   69: getstatic com/ca/android/app/JSCaMDOIntegration.formRequests : Ljava/util/Map;
    //   72: aload #5
    //   74: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   79: checkcast com/ca/android/app/JSCaMDOIntegration$FormRequest
    //   82: astore_0
    //   83: aconst_null
    //   84: astore_1
    //   85: aload_0
    //   86: invokestatic executeFormRequest : (Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;)Ljava/io/InputStream;
    //   89: astore_0
    //   90: aload_0
    //   91: astore_1
    //   92: getstatic com/ca/android/app/JSCaMDOIntegration.formRequests : Ljava/util/Map;
    //   95: aload #5
    //   97: invokeinterface remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   102: pop
    //   103: aload #4
    //   105: astore_0
    //   106: aload_1
    //   107: ifnull -> 27
    //   110: aload_1
    //   111: checkcast com/ca/mdo/SDKInputStream
    //   114: astore_0
    //   115: new android/webkit/WebResourceResponse
    //   118: dup
    //   119: aload_0
    //   120: getfield mimeType : Ljava/lang/String;
    //   123: aload_0
    //   124: getfield encoding : Ljava/lang/String;
    //   127: aload_0
    //   128: getfield delegate : Ljava/io/InputStream;
    //   131: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    //   134: astore_0
    //   135: aload_0
    //   136: areturn
    //   137: astore_0
    //   138: new java/lang/StringBuilder
    //   141: dup
    //   142: invokespecial <init> : ()V
    //   145: ldc_w 'Exception while executing form post'
    //   148: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: aload_0
    //   152: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   155: invokevirtual toString : ()Ljava/lang/String;
    //   158: aload_0
    //   159: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   162: pop
    //   163: getstatic com/ca/android/app/JSCaMDOIntegration.formRequests : Ljava/util/Map;
    //   166: aload #5
    //   168: invokeinterface remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   173: pop
    //   174: goto -> 103
    //   177: astore_0
    //   178: new java/lang/StringBuilder
    //   181: dup
    //   182: invokespecial <init> : ()V
    //   185: ldc_w 'shouldInterceptRequest:'
    //   188: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: aload #5
    //   193: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: ldc_w ': failed'
    //   199: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: invokevirtual toString : ()Ljava/lang/String;
    //   205: aload_0
    //   206: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   209: pop
    //   210: aconst_null
    //   211: areturn
    //   212: astore_0
    //   213: getstatic com/ca/android/app/JSCaMDOIntegration.formRequests : Ljava/util/Map;
    //   216: aload #5
    //   218: invokeinterface remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   223: pop
    //   224: aload_0
    //   225: athrow
    //   226: aload #5
    //   228: invokestatic isResource : (Ljava/lang/String;)Z
    //   231: istore_3
    //   232: aload #4
    //   234: astore_0
    //   235: iload_3
    //   236: ifeq -> 27
    //   239: aconst_null
    //   240: astore_1
    //   241: aload #5
    //   243: invokestatic executeHttpGetRequest : (Ljava/lang/String;)Ljava/io/InputStream;
    //   246: astore_0
    //   247: aload_0
    //   248: astore_1
    //   249: aload #4
    //   251: astore_0
    //   252: aload_1
    //   253: ifnull -> 27
    //   256: aload_1
    //   257: checkcast com/ca/mdo/SDKInputStream
    //   260: astore_0
    //   261: new android/webkit/WebResourceResponse
    //   264: dup
    //   265: aload_0
    //   266: getfield mimeType : Ljava/lang/String;
    //   269: aload_0
    //   270: getfield encoding : Ljava/lang/String;
    //   273: aload_0
    //   274: getfield delegate : Ljava/io/InputStream;
    //   277: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    //   280: areturn
    //   281: astore_0
    //   282: new java/lang/StringBuilder
    //   285: dup
    //   286: invokespecial <init> : ()V
    //   289: ldc_w 'Exception while executing Resource URL'
    //   292: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   295: aload_0
    //   296: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   299: invokevirtual toString : ()Ljava/lang/String;
    //   302: aload_0
    //   303: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   306: pop
    //   307: goto -> 249
    // Exception table:
    //   from	to	target	type
    //   33	40	177	java/lang/Throwable
    //   43	51	177	java/lang/Throwable
    //   56	83	177	java/lang/Throwable
    //   85	90	137	java/lang/Exception
    //   85	90	212	finally
    //   92	103	177	java/lang/Throwable
    //   110	135	177	java/lang/Throwable
    //   138	163	212	finally
    //   163	174	177	java/lang/Throwable
    //   213	226	177	java/lang/Throwable
    //   226	232	177	java/lang/Throwable
    //   241	247	281	java/lang/Exception
    //   241	247	177	java/lang/Throwable
    //   256	281	177	java/lang/Throwable
    //   282	307	177	java/lang/Throwable
  }
  
  static WebResourceResponse shouldInterceptRequest(WebView paramWebView, WebViewClient paramWebViewClient, String paramString) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #4
    //   3: getstatic com/ca/mdo/CaMDOWebViewClientImpl.isJSInterceptionDisabled : Z
    //   6: ifeq -> 18
    //   9: aload_0
    //   10: aload_1
    //   11: aload_2
    //   12: invokestatic shouldInterceptRequestWhenJSIntegrationDisabled : (Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    //   15: astore_0
    //   16: aload_0
    //   17: areturn
    //   18: aload_1
    //   19: ifnull -> 29
    //   22: aload_0
    //   23: aload_1
    //   24: aload_2
    //   25: invokestatic shoudlInterceptByOrgWebviewClient : (Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    //   28: areturn
    //   29: aload #4
    //   31: astore_0
    //   32: aload_2
    //   33: invokestatic isSupportedUrl : (Ljava/lang/String;)Z
    //   36: ifeq -> 16
    //   39: aload_2
    //   40: ifnull -> 207
    //   43: getstatic com/ca/android/app/JSCaMDOIntegration.formRequests : Ljava/util/Map;
    //   46: aload_2
    //   47: invokeinterface containsKey : (Ljava/lang/Object;)Z
    //   52: ifeq -> 207
    //   55: getstatic com/ca/android/app/JSCaMDOIntegration.formRequests : Ljava/util/Map;
    //   58: aload_2
    //   59: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   64: checkcast com/ca/android/app/JSCaMDOIntegration$FormRequest
    //   67: astore_0
    //   68: aconst_null
    //   69: astore_1
    //   70: aload_0
    //   71: invokestatic executeFormRequest : (Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;)Ljava/io/InputStream;
    //   74: astore_0
    //   75: aload_0
    //   76: astore_1
    //   77: getstatic com/ca/android/app/JSCaMDOIntegration.formRequests : Ljava/util/Map;
    //   80: aload_2
    //   81: invokeinterface remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   86: pop
    //   87: aload #4
    //   89: astore_0
    //   90: aload_1
    //   91: ifnull -> 16
    //   94: aload_1
    //   95: checkcast com/ca/mdo/SDKInputStream
    //   98: astore_0
    //   99: new android/webkit/WebResourceResponse
    //   102: dup
    //   103: aload_0
    //   104: getfield mimeType : Ljava/lang/String;
    //   107: aload_0
    //   108: getfield encoding : Ljava/lang/String;
    //   111: aload_0
    //   112: getfield delegate : Ljava/io/InputStream;
    //   115: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    //   118: astore_0
    //   119: aload_0
    //   120: areturn
    //   121: astore_0
    //   122: new java/lang/StringBuilder
    //   125: dup
    //   126: invokespecial <init> : ()V
    //   129: ldc_w 'Exception while executing form post'
    //   132: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: aload_0
    //   136: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   139: invokevirtual toString : ()Ljava/lang/String;
    //   142: aload_0
    //   143: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   146: pop
    //   147: getstatic com/ca/android/app/JSCaMDOIntegration.formRequests : Ljava/util/Map;
    //   150: aload_2
    //   151: invokeinterface remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   156: pop
    //   157: goto -> 87
    //   160: astore_0
    //   161: new java/lang/StringBuilder
    //   164: dup
    //   165: invokespecial <init> : ()V
    //   168: ldc_w 'shouldInterceptRequest:'
    //   171: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: aload_2
    //   175: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   178: ldc_w ': failed'
    //   181: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: invokevirtual toString : ()Ljava/lang/String;
    //   187: aload_0
    //   188: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   191: pop
    //   192: aconst_null
    //   193: areturn
    //   194: astore_0
    //   195: getstatic com/ca/android/app/JSCaMDOIntegration.formRequests : Ljava/util/Map;
    //   198: aload_2
    //   199: invokeinterface remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   204: pop
    //   205: aload_0
    //   206: athrow
    //   207: aload_2
    //   208: invokestatic isResource : (Ljava/lang/String;)Z
    //   211: istore_3
    //   212: aload #4
    //   214: astore_0
    //   215: iload_3
    //   216: ifeq -> 16
    //   219: aconst_null
    //   220: astore_1
    //   221: aload_2
    //   222: invokestatic executeHttpGetRequest : (Ljava/lang/String;)Ljava/io/InputStream;
    //   225: astore_0
    //   226: aload_0
    //   227: astore_1
    //   228: aload #4
    //   230: astore_0
    //   231: aload_1
    //   232: ifnull -> 16
    //   235: aload_1
    //   236: checkcast com/ca/mdo/SDKInputStream
    //   239: astore_0
    //   240: new android/webkit/WebResourceResponse
    //   243: dup
    //   244: aload_0
    //   245: getfield mimeType : Ljava/lang/String;
    //   248: aload_0
    //   249: getfield encoding : Ljava/lang/String;
    //   252: aload_0
    //   253: getfield delegate : Ljava/io/InputStream;
    //   256: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    //   259: areturn
    //   260: astore_0
    //   261: new java/lang/StringBuilder
    //   264: dup
    //   265: invokespecial <init> : ()V
    //   268: ldc_w 'Exception while executing Resource URL'
    //   271: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: aload_0
    //   275: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   278: invokevirtual toString : ()Ljava/lang/String;
    //   281: aload_0
    //   282: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   285: pop
    //   286: goto -> 228
    // Exception table:
    //   from	to	target	type
    //   22	29	160	java/lang/Throwable
    //   32	39	160	java/lang/Throwable
    //   43	68	160	java/lang/Throwable
    //   70	75	121	java/lang/Exception
    //   70	75	194	finally
    //   77	87	160	java/lang/Throwable
    //   94	119	160	java/lang/Throwable
    //   122	147	194	finally
    //   147	157	160	java/lang/Throwable
    //   195	207	160	java/lang/Throwable
    //   207	212	160	java/lang/Throwable
    //   221	226	260	java/lang/Exception
    //   221	226	160	java/lang/Throwable
    //   235	260	160	java/lang/Throwable
    //   261	286	160	java/lang/Throwable
  }
  
  static WebResourceResponse shouldInterceptRequest2(WebView paramWebView, String paramString) {
    try {
      URI.create(paramString).getScheme();
      if (!isSupportedUrl(paramString))
        return null; 
      HttpURLConnection httpURLConnection = (HttpURLConnection)(new URL(paramString)).openConnection();
      if (CAMobileDevOps.sendAPMHeader())
        httpURLConnection.setRequestProperty("x-apm-bt", AppDeviceData.getAPMHeader()); 
      return new WebResourceResponse(null, null, httpURLConnection.getInputStream());
    } catch (Throwable throwable) {
      CALog.e("shouldInterceptRequest: failed", throwable);
      return null;
    } 
  }
  
  @TargetApi(21)
  static WebResourceResponse shouldInterceptRequestWhenJSIntegrationDisabled(WebView paramWebView, WebViewClient paramWebViewClient, WebResourceRequest paramWebResourceRequest) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_2
    //   3: ifnull -> 15
    //   6: aload_2
    //   7: invokeinterface getUrl : ()Landroid/net/Uri;
    //   12: ifnonnull -> 24
    //   15: ldc_w 'shouldInterceptRequest: null request'
    //   18: invokestatic w : (Ljava/lang/String;)I
    //   21: pop
    //   22: aconst_null
    //   23: areturn
    //   24: aload_2
    //   25: invokeinterface getUrl : ()Landroid/net/Uri;
    //   30: invokevirtual toString : ()Ljava/lang/String;
    //   33: astore #4
    //   35: aload_1
    //   36: ifnull -> 146
    //   39: aload_1
    //   40: aload_0
    //   41: aload_2
    //   42: invokevirtual shouldInterceptRequest : (Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    //   45: astore_0
    //   46: aload #4
    //   48: invokestatic isSupportedUrl : (Ljava/lang/String;)Z
    //   51: ifne -> 56
    //   54: aload_0
    //   55: areturn
    //   56: aload_0
    //   57: ifnonnull -> 143
    //   60: aload #4
    //   62: invokestatic executeHttpGetRequest : (Ljava/lang/String;)Ljava/io/InputStream;
    //   65: astore_1
    //   66: aload_1
    //   67: ifnull -> 99
    //   70: aload_1
    //   71: checkcast com/ca/mdo/SDKInputStream
    //   74: astore_1
    //   75: new android/webkit/WebResourceResponse
    //   78: dup
    //   79: aload_1
    //   80: getfield mimeType : Ljava/lang/String;
    //   83: aload_1
    //   84: getfield encoding : Ljava/lang/String;
    //   87: aload_1
    //   88: getfield delegate : Ljava/io/InputStream;
    //   91: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    //   94: astore_1
    //   95: aload_1
    //   96: astore_0
    //   97: aload_0
    //   98: areturn
    //   99: aconst_null
    //   100: areturn
    //   101: astore_1
    //   102: aload_3
    //   103: astore_0
    //   104: new java/lang/StringBuilder
    //   107: dup
    //   108: invokespecial <init> : ()V
    //   111: ldc_w 'shouldInterceptRequest:'
    //   114: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: aload #4
    //   119: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: ldc_w ': failed'
    //   125: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: invokevirtual toString : ()Ljava/lang/String;
    //   131: aload_1
    //   132: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   135: pop
    //   136: goto -> 97
    //   139: astore_1
    //   140: goto -> 104
    //   143: goto -> 97
    //   146: aconst_null
    //   147: astore_0
    //   148: goto -> 46
    // Exception table:
    //   from	to	target	type
    //   39	46	101	java/lang/Throwable
    //   46	54	139	java/lang/Throwable
    //   60	66	139	java/lang/Throwable
    //   70	95	139	java/lang/Throwable
  }
  
  static WebResourceResponse shouldInterceptRequestWhenJSIntegrationDisabled(WebView paramWebView, WebViewClient paramWebViewClient, String paramString) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_1
    //   3: ifnull -> 110
    //   6: aload_1
    //   7: aload_0
    //   8: aload_2
    //   9: invokevirtual shouldInterceptRequest : (Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    //   12: astore_0
    //   13: aload_2
    //   14: invokestatic isSupportedUrl : (Ljava/lang/String;)Z
    //   17: ifne -> 22
    //   20: aload_0
    //   21: areturn
    //   22: aload_0
    //   23: ifnonnull -> 107
    //   26: aload_2
    //   27: invokestatic executeHttpGetRequest : (Ljava/lang/String;)Ljava/io/InputStream;
    //   30: astore_1
    //   31: aload_1
    //   32: ifnull -> 64
    //   35: aload_1
    //   36: checkcast com/ca/mdo/SDKInputStream
    //   39: astore_1
    //   40: new android/webkit/WebResourceResponse
    //   43: dup
    //   44: aload_1
    //   45: getfield mimeType : Ljava/lang/String;
    //   48: aload_1
    //   49: getfield encoding : Ljava/lang/String;
    //   52: aload_1
    //   53: getfield delegate : Ljava/io/InputStream;
    //   56: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    //   59: astore_1
    //   60: aload_1
    //   61: astore_0
    //   62: aload_0
    //   63: areturn
    //   64: aconst_null
    //   65: areturn
    //   66: astore_1
    //   67: aload_3
    //   68: astore_0
    //   69: new java/lang/StringBuilder
    //   72: dup
    //   73: invokespecial <init> : ()V
    //   76: ldc_w 'shouldInterceptRequest:'
    //   79: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: aload_2
    //   83: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: ldc_w ': failed'
    //   89: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: invokevirtual toString : ()Ljava/lang/String;
    //   95: aload_1
    //   96: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   99: pop
    //   100: goto -> 62
    //   103: astore_1
    //   104: goto -> 69
    //   107: goto -> 62
    //   110: aconst_null
    //   111: astore_0
    //   112: goto -> 13
    // Exception table:
    //   from	to	target	type
    //   6	13	66	java/lang/Throwable
    //   13	20	103	java/lang/Throwable
    //   26	31	103	java/lang/Throwable
    //   35	60	103	java/lang/Throwable
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\CaMDOWebViewClientImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */