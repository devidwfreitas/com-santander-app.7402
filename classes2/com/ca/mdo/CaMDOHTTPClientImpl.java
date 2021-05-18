package com.ca.mdo;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.net.http.AndroidHttpClient;
import android.os.Process;
import android.webkit.WebView;
import java.io.IOException;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HttpContext;

@TargetApi(8)
class CaMDOHTTPClientImpl {
  private static int uid = Process.myUid();
  
  public static void connect(HttpURLConnection paramHttpURLConnection) throws IOException {
    long l3 = 0L;
    long l4 = 0L;
    long l5 = 0L;
    String str4 = null;
    String str3 = null;
    String str1 = str3;
    long l2 = l4;
    long l1 = l3;
    String str2 = str4;
    try {
      CALog.d("httpClient.execute(HttpUriRequest, httpContext) replaced");
      str1 = str3;
      l2 = l4;
      l1 = l3;
      str2 = str4;
      l3 = System.currentTimeMillis();
      str1 = str3;
      l2 = l4;
      l1 = l3;
      str2 = str4;
      str3 = paramHttpURLConnection.getURL().toString();
      str1 = str3;
      l2 = l4;
      l1 = l3;
      str2 = str3;
      l4 = TrafficStats.getUidRxBytes(uid);
      str1 = str3;
      l2 = l4;
      l1 = l3;
      str2 = str3;
      long l = TrafficStats.getUidTxBytes(uid);
      l1 = l;
    } catch (Throwable throwable1) {
      str2 = str1;
      CALog.e("Exception in HttpURLConnection.connect()", throwable1);
    } finally {
      str1 = null;
      try {
        if (CAMobileDevOps.sendAPMHeader())
          iOException.setRequestProperty("x-apm-bt", AppDeviceData.getAPMHeader()); 
      } catch (Throwable throwable1) {}
    } 
  }
  
  public static Object execute(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest, ResponseHandler paramResponseHandler) throws IOException {
    return execute(paramHttpClient, paramHttpUriRequest, paramResponseHandler, (HttpContext)null);
  }
  
  public static Object execute(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest, ResponseHandler paramResponseHandler, HttpContext paramHttpContext) throws IOException {
    long l4 = 0L;
    long l5 = 0L;
    long l6 = 0L;
    paramHttpContext = null;
    long l3 = l5;
    long l2 = l4;
    long l1 = l6;
    try {
      CALog.d("DefaultHttpClient.execute(HttpUriRequest) replaced");
      l3 = l5;
      l2 = l4;
      l1 = l6;
      l4 = System.currentTimeMillis();
      l3 = l5;
      l2 = l4;
      l1 = l6;
      l5 = TrafficStats.getUidRxBytes(uid);
      l3 = l5;
      l2 = l4;
      l1 = l6;
      l6 = TrafficStats.getUidTxBytes(uid);
      l3 = l5;
      l2 = l4;
      l1 = l6;
      String str2 = paramHttpUriRequest.getURI().toString();
      String str1 = str2;
    } catch (Throwable throwable) {
    
    } finally {
      paramHttpContext = null;
      try {
        if (CAMobileDevOps.sendAPMHeader())
          paramHttpUriRequest.setHeader("x-apm-bt", AppDeviceData.getAPMHeader()); 
      } catch (Throwable throwable) {}
    } 
  }
  
  public static Object execute(DefaultHttpClient paramDefaultHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler paramResponseHandler, HttpContext paramHttpContext) throws IOException {
    long l4 = 0L;
    long l5 = 0L;
    long l6 = 0L;
    String str = null;
    long l3 = l4;
    long l2 = l5;
    long l1 = l6;
    try {
      CALog.d("DefaultHttpClient.execute(HttpUriRequest) replaced");
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l4 = System.currentTimeMillis();
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l5 = TrafficStats.getUidRxBytes(uid);
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l6 = TrafficStats.getUidTxBytes(uid);
      l3 = l4;
      l2 = l5;
      l1 = l6;
      String str1 = paramHttpRequest.getRequestLine().getUri();
      str = str1;
    } catch (Throwable throwable) {
    
    } finally {
      str = null;
      try {
        if (CAMobileDevOps.sendAPMHeader())
          paramHttpRequest.setHeader("x-apm-bt", AppDeviceData.getAPMHeader()); 
      } catch (Throwable throwable) {}
    } 
  }
  
  public static HttpResponse execute(AndroidHttpClient paramAndroidHttpClient, HttpUriRequest paramHttpUriRequest) throws IOException {
    long l4 = 0L;
    long l5 = 0L;
    long l6 = 0L;
    String str = null;
    long l3 = l4;
    long l2 = l5;
    long l1 = l6;
    try {
      CALog.d("AndroidHttpClient.execute(HttpUriRequest) replaced");
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l4 = System.currentTimeMillis();
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l5 = TrafficStats.getUidRxBytes(uid);
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l6 = TrafficStats.getUidTxBytes(uid);
      l3 = l4;
      l2 = l5;
      l1 = l6;
      String str1 = paramHttpUriRequest.getURI().toString();
      str = str1;
    } catch (Throwable throwable) {
    
    } finally {
      str = null;
      try {
        if (CAMobileDevOps.sendAPMHeader())
          paramHttpUriRequest.setHeader("x-apm-bt", AppDeviceData.getAPMHeader()); 
      } catch (Throwable throwable) {}
    } 
  }
  
  public static HttpResponse execute(HttpClient paramHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest) throws IOException {
    long l3 = 0L;
    long l4 = 0L;
    long l5 = 0L;
    String str4 = null;
    String str3 = null;
    long l2 = l3;
    long l1 = l4;
    String str1 = str3;
    String str2 = str4;
    try {
      CALog.d("httpClient.execute(httpHost, httpRequest); replaced");
      l2 = l3;
      l1 = l4;
      str1 = str3;
      str2 = str4;
      l3 = System.currentTimeMillis();
      l2 = l3;
      l1 = l4;
      str1 = str3;
      str2 = str4;
      str3 = paramHttpRequest.getRequestLine().getUri();
      l2 = l3;
      l1 = l4;
      str1 = str3;
      str2 = str3;
      l4 = TrafficStats.getUidRxBytes(uid);
      l2 = l3;
      l1 = l4;
      str1 = str3;
      str2 = str3;
      long l = TrafficStats.getUidTxBytes(uid);
      l5 = l;
    } catch (Throwable throwable1) {
      str2 = str1;
    } finally {
      str1 = null;
      try {
        if (CAMobileDevOps.sendAPMHeader())
          paramHttpRequest.setHeader("x-apm-bt", AppDeviceData.getAPMHeader()); 
      } catch (Throwable throwable1) {}
    } 
  }
  
  public static HttpResponse execute(HttpClient paramHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext) throws IOException {
    long l3 = 0L;
    long l4 = 0L;
    long l5 = 0L;
    String str4 = null;
    String str3 = null;
    long l2 = l3;
    long l1 = l4;
    String str1 = str3;
    String str2 = str4;
    try {
      CALog.d("client.execute(HttpPost, HttpRequest, HttpContext)");
      l2 = l3;
      l1 = l4;
      str1 = str3;
      str2 = str4;
      l3 = System.currentTimeMillis();
      l2 = l3;
      l1 = l4;
      str1 = str3;
      str2 = str4;
      str3 = paramHttpRequest.getRequestLine().getUri();
      l2 = l3;
      l1 = l4;
      str1 = str3;
      str2 = str3;
      l4 = TrafficStats.getUidRxBytes(uid);
      l2 = l3;
      l1 = l4;
      str1 = str3;
      str2 = str3;
      long l = TrafficStats.getUidTxBytes(uid);
      l5 = l;
    } catch (Throwable throwable1) {
      str2 = str1;
    } finally {
      str1 = null;
      try {
        if (CAMobileDevOps.sendAPMHeader())
          paramHttpRequest.setHeader("x-apm-bt", AppDeviceData.getAPMHeader()); 
      } catch (Throwable throwable1) {}
    } 
  }
  
  public static HttpResponse execute(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest) throws IOException {
    long l3 = 0L;
    long l4 = 0L;
    long l5 = 0L;
    String str2 = null;
    String str1 = null;
    long l2 = l3;
    long l1 = l4;
    try {
      String str = paramHttpUriRequest.getURI().toString();
      l2 = l3;
      l1 = l4;
      str1 = str;
      str2 = str;
      CALog.d("client.execute(HttpUriRequest) replaced");
      l2 = l3;
      l1 = l4;
      str1 = str;
      str2 = str;
      l3 = System.currentTimeMillis();
      l2 = l3;
      l1 = l4;
      str1 = str;
      str2 = str;
      l4 = TrafficStats.getUidRxBytes(uid);
      l2 = l3;
      l1 = l4;
      str1 = str;
      str2 = str;
      long l = TrafficStats.getUidTxBytes(uid);
      l5 = l;
    } catch (Throwable throwable) {
      str2 = str1;
    } finally {
      str1 = null;
      try {
        if (CAMobileDevOps.sendAPMHeader())
          paramHttpUriRequest.setHeader("x-apm-bt", AppDeviceData.getAPMHeader()); 
      } catch (Throwable throwable) {}
    } 
  }
  
  public static HttpResponse execute(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext) throws IOException {
    long l3 = 0L;
    long l4 = 0L;
    long l5 = 0L;
    String str4 = null;
    String str3 = null;
    long l2 = l3;
    long l1 = l4;
    String str1 = str3;
    String str2 = str4;
    try {
      CALog.d("httpClient.execute(HttpUriRequest, httpContext) replaced");
      l2 = l3;
      l1 = l4;
      str1 = str3;
      str2 = str4;
      l3 = System.currentTimeMillis();
      l2 = l3;
      l1 = l4;
      str1 = str3;
      str2 = str4;
      str3 = paramHttpUriRequest.getURI().toString();
      l2 = l3;
      l1 = l4;
      str1 = str3;
      str2 = str3;
      l4 = TrafficStats.getUidRxBytes(uid);
      l2 = l3;
      l1 = l4;
      str1 = str3;
      str2 = str3;
      long l = TrafficStats.getUidTxBytes(uid);
      l5 = l;
    } catch (Throwable throwable1) {
      str2 = str1;
    } finally {
      str1 = null;
      try {
        if (CAMobileDevOps.sendAPMHeader())
          paramHttpUriRequest.setHeader("x-apm-bt", AppDeviceData.getAPMHeader()); 
      } catch (Throwable throwable1) {}
    } 
  }
  
  public static HttpResponse execute(AbstractHttpClient paramAbstractHttpClient, HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext) throws IOException {
    long l4 = 0L;
    long l5 = 0L;
    long l6 = 0L;
    String str = null;
    long l3 = l4;
    long l2 = l5;
    long l1 = l6;
    try {
      CALog.d("AbstractHttpClient.execute(HttpUriRequest, HttpContext) replaced");
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l4 = System.currentTimeMillis();
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l5 = TrafficStats.getUidRxBytes(uid);
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l6 = TrafficStats.getUidTxBytes(uid);
      l3 = l4;
      l2 = l5;
      l1 = l6;
      String str1 = paramHttpUriRequest.getURI().toString();
      str = str1;
    } catch (Throwable throwable) {
    
    } finally {
      str = null;
      try {
        if (CAMobileDevOps.sendAPMHeader())
          paramHttpUriRequest.setHeader("x-apm-bt", AppDeviceData.getAPMHeader()); 
      } catch (Throwable throwable) {}
    } 
  }
  
  public static HttpResponse execute(DefaultHttpClient paramDefaultHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext) throws IOException {
    long l4 = 0L;
    long l5 = 0L;
    long l6 = 0L;
    String str = null;
    long l3 = l4;
    long l2 = l5;
    long l1 = l6;
    try {
      CALog.d("DefaultHttpClient.execute(HttpUriRequest) replaced");
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l4 = System.currentTimeMillis();
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l5 = TrafficStats.getUidRxBytes(uid);
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l6 = TrafficStats.getUidTxBytes(uid);
      l3 = l4;
      l2 = l5;
      l1 = l6;
      String str1 = paramHttpHost.toURI();
      str = str1;
    } catch (Throwable throwable) {
    
    } finally {
      str = null;
      try {
        if (CAMobileDevOps.sendAPMHeader())
          paramHttpRequest.setHeader("x-apm-bt", AppDeviceData.getAPMHeader()); 
      } catch (Throwable throwable) {}
    } 
  }
  
  public static HttpResponse execute(DefaultHttpClient paramDefaultHttpClient, HttpUriRequest paramHttpUriRequest) throws IOException {
    long l4 = 0L;
    long l5 = 0L;
    long l6 = 0L;
    String str = null;
    long l3 = l4;
    long l2 = l5;
    long l1 = l6;
    try {
      CALog.d("DefaultHttpClient.execute(HttpUriRequest) replaced");
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l4 = System.currentTimeMillis();
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l5 = TrafficStats.getUidRxBytes(uid);
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l6 = TrafficStats.getUidTxBytes(uid);
      l3 = l4;
      l2 = l5;
      l1 = l6;
      String str1 = paramHttpUriRequest.getURI().toString();
      str = str1;
    } catch (Throwable throwable) {
    
    } finally {
      str = null;
      try {
        if (CAMobileDevOps.sendAPMHeader())
          paramHttpUriRequest.setHeader("x-apm-bt", AppDeviceData.getAPMHeader()); 
      } catch (Throwable throwable) {}
    } 
  }
  
  public static HttpResponse execute(DefaultHttpClient paramDefaultHttpClient, HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext) throws IOException {
    long l4 = 0L;
    long l5 = 0L;
    long l6 = 0L;
    String str = null;
    long l3 = l4;
    long l2 = l5;
    long l1 = l6;
    try {
      CALog.d("AbstractHttpClient.execute(HttpUriRequest, HttpContext) replaced");
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l4 = System.currentTimeMillis();
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l5 = TrafficStats.getUidRxBytes(uid);
      l3 = l4;
      l2 = l5;
      l1 = l6;
      l6 = TrafficStats.getUidTxBytes(uid);
      l3 = l4;
      l2 = l5;
      l1 = l6;
      String str1 = paramHttpUriRequest.getURI().toString();
      str = str1;
    } catch (Throwable throwable) {
    
    } finally {
      str = null;
      try {
        if (CAMobileDevOps.sendAPMHeader())
          paramHttpUriRequest.setHeader("x-apm-bt", AppDeviceData.getAPMHeader()); 
      } catch (Throwable throwable) {}
    } 
  }
  
  private static String getAPMCookieFromURL(String paramString, HttpResponse paramHttpResponse) {
    paramString = null;
    Header[] arrayOfHeader = paramHttpResponse.getHeaders("Set-Cookie");
    boolean bool = false;
    int j = arrayOfHeader.length;
    int i = 0;
    while (true) {
      String str = paramString;
      if (i < j) {
        boolean bool1;
        Iterator<HttpCookie> iterator = HttpCookie.parse(arrayOfHeader[i].getValue()).iterator();
        while (true) {
          str = paramString;
          bool1 = bool;
          if (iterator.hasNext()) {
            HttpCookie httpCookie = iterator.next();
            if (httpCookie.getName().endsWith("x-apm-brtm-response-bt")) {
              str = httpCookie.getValue();
              bool1 = true;
              break;
            } 
            continue;
          } 
          break;
        } 
        if (!bool1) {
          i++;
          paramString = str;
          bool = bool1;
          continue;
        } 
      } 
      return str;
    } 
  }
  
  private static Map<String, String> getAttributesFromAPMCookie(String paramString) {
    String[] arrayOfString1;
    int i = 0;
    HashMap<Object, Object> hashMap = null;
    String[] arrayOfString2 = null;
    if (paramString != null) {
      String[] arrayOfString;
      try {
        hashMap = new HashMap<Object, Object>();
        try {
          arrayOfString = URLDecoder.decode(paramString, "UTF-8").split(",");
          int j = arrayOfString.length;
          while (i < j) {
            arrayOfString2 = arrayOfString[i].split("=");
            if (arrayOfString2[0].equalsIgnoreCase("CorBrowsGUID") && arrayOfString2[1] != null)
              hashMap.put("corrId", arrayOfString2[1]); 
            i++;
          } 
        } catch (Exception exception) {
          HashMap<Object, Object> hashMap1 = hashMap;
        } 
      } catch (Exception exception) {
        arrayOfString = arrayOfString2;
      } 
      CALog.d("Cannot decode Apm Cookie");
      arrayOfString1 = arrayOfString;
    } 
    return (Map<String, String>)arrayOfString1;
  }
  
  public static int getResponseCode(HttpURLConnection paramHttpURLConnection) throws IOException {
    long l3 = 0L;
    long l4 = 0L;
    long l5 = 0L;
    String str4 = null;
    String str3 = null;
    String str1 = str3;
    long l2 = l4;
    long l1 = l3;
    String str2 = str4;
    try {
      CALog.d("HttpURLConnection.getResponseCode() replaced");
      str1 = str3;
      l2 = l4;
      l1 = l3;
      str2 = str4;
      l3 = System.currentTimeMillis();
      str1 = str3;
      l2 = l4;
      l1 = l3;
      str2 = str4;
      str3 = paramHttpURLConnection.getURL().toString();
      str1 = str3;
      l2 = l4;
      l1 = l3;
      str2 = str3;
      l4 = TrafficStats.getUidRxBytes(uid);
      str1 = str3;
      l2 = l4;
      l1 = l3;
      str2 = str3;
      long l = TrafficStats.getUidTxBytes(uid);
      l5 = l;
    } catch (Throwable throwable) {
      int i;
      str2 = str1;
      CALog.e("Exception in HttpURLConnection.getResponseCode()", throwable);
      try {
        i = iOException.getResponseCode();
      } catch (IOException iOException) {
        CALog.e("Exception caught in Url:" + str1, iOException);
        logNetworkException(str1);
        throw iOException;
      } 
      l3 = TrafficStats.getUidRxBytes(uid);
      l4 = TrafficStats.getUidTxBytes(uid);
      return i;
    } finally {
      str1 = null;
    } 
  }
  
  public static void loadUrl(WebView paramWebView, String paramString) {
    long l2 = 0L;
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
      l4 = l6;
    } catch (Throwable throwable1) {
    
    } finally {
      if (CAMobileDevOps.sendAPMHeader()) {
        HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
        hashMap.put("x-apm-bt", AppDeviceData.getAPMHeader());
        throwable.loadUrl(paramString, hashMap);
        throw null;
      } 
      throwable.loadUrl(paramString);
    } 
  }
  
  public static void loadUrl(WebView paramWebView, String paramString, Map<Object, Object> paramMap) {
    long l5 = 0L;
    long l4 = 0L;
    long l1 = l4;
    long l3 = l5;
    long l2 = l4;
    try {
      long l6 = System.currentTimeMillis();
      l1 = l4;
      l3 = l6;
      l2 = l4;
      l5 = l6;
      l4 = TrafficStats.getUidRxBytes(uid);
      l1 = l4;
      l3 = l6;
      l2 = l4;
      l5 = l6;
      long l7 = TrafficStats.getUidTxBytes(uid);
    } catch (Throwable throwable1) {
    
    } finally {
      Map<Object, Object> map = paramMap;
      if (CAMobileDevOps.sendAPMHeader()) {
        map = paramMap;
        if (paramMap == null)
          map = new HashMap<Object, Object>(); 
        map.put("x-apm-bt", AppDeviceData.getAPMHeader());
      } 
      throwable.loadUrl(paramString, map);
      try {
        l1 = TrafficStats.getUidRxBytes(uid);
        l3 = TrafficStats.getUidTxBytes(uid);
        long l = System.currentTimeMillis() - l5;
        CAMobileDevOps.httpPerformance(CAMobileDevOps.getNetworkData(paramString, 777, l, l1 - l2, l3 - 0L, null, null, null, null));
        CALog.d("URL: " + paramString + " responseTime: " + l + " status: " + '̉');
      } catch (Throwable throwable1) {}
    } 
  }
  
  public static void logNetworkException(String paramString) {
    CAMobileDevOps.httpPerformance(CAMobileDevOps.getNetworkData(paramString, 777, 0L, 0L, 0L, null, null, null, null));
  }
  
  public static URLConnection openConnection(URL paramURL) throws IOException {
    String str = null;
    if (paramURL != null) {
      String str1 = null;
      str = str1;
      try {
        CALog.d("URL.openConnection replaced");
        str = str1;
        URLConnection uRLConnection = paramURL.openConnection();
        str = str1;
        str1 = paramURL.toString();
        str = str1;
        if (CAMobileDevOps.sendAPMHeader()) {
          str = str1;
          uRLConnection.setRequestProperty("x-apm-bt", AppDeviceData.getAPMHeader());
        } 
        str = str1;
        CALog.d("URL: " + paramURL);
        return uRLConnection;
      } catch (IOException iOException) {
        CALog.e("Exception caught in Url:" + str, iOException);
        logNetworkException(str);
        throw iOException;
      } 
    } 
    return (URLConnection)str;
  }
  
  private static void recordHttpPerformance(long paramLong1, long paramLong2, long paramLong3, HttpResponse paramHttpResponse, String paramString) {
    long l1 = TrafficStats.getUidRxBytes(uid);
    long l2 = TrafficStats.getUidTxBytes(uid);
    paramLong1 = System.currentTimeMillis() - paramLong1;
    int i = paramHttpResponse.getStatusLine().getStatusCode();
    CAMobileDevOps.httpPerformance(CAMobileDevOps.getNetworkData(paramString, i, paramLong1, l1 - paramLong2, l2 - paramLong3, null, getAttributesFromAPMCookie(getAPMCookieFromURL(paramString, paramHttpResponse)), null, null));
    CALog.d("URL: " + paramString + " responseTime: " + paramLong1 + " status: " + i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\CaMDOHTTPClientImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */