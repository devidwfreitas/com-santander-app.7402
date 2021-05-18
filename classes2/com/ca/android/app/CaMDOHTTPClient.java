package com.ca.android.app;

import android.annotation.TargetApi;
import android.net.http.AndroidHttpClient;
import com.ca.mdo.SDK;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
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
public class CaMDOHTTPClient {
  public static void connect(HttpURLConnection paramHttpURLConnection) throws IOException {
    SDK.getAgent().connectOnHttpURLConnection(paramHttpURLConnection);
  }
  
  public static Object execute(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest, ResponseHandler paramResponseHandler) throws IOException {
    return SDK.getAgent().executeOnHttpClientWithHandler(paramHttpClient, paramHttpUriRequest, paramResponseHandler);
  }
  
  public static Object execute(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest, ResponseHandler paramResponseHandler, HttpContext paramHttpContext) throws IOException {
    return SDK.getAgent().executeOnHttpClientWithHandler(paramHttpClient, paramHttpUriRequest, paramResponseHandler, paramHttpContext);
  }
  
  public static Object execute(DefaultHttpClient paramDefaultHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler paramResponseHandler) throws IOException {
    return SDK.getAgent().executeOnHttpClientWithHandler(paramDefaultHttpClient, paramHttpHost, paramHttpRequest, paramResponseHandler);
  }
  
  public static Object execute(DefaultHttpClient paramDefaultHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler paramResponseHandler, HttpContext paramHttpContext) throws IOException {
    return SDK.getAgent().executeOnHttpClientWithHandler(paramDefaultHttpClient, paramHttpHost, paramHttpRequest, paramResponseHandler, paramHttpContext);
  }
  
  public static HttpResponse execute(AndroidHttpClient paramAndroidHttpClient, HttpUriRequest paramHttpUriRequest) throws IOException {
    return SDK.getAgent().executeOnHttpClient(paramAndroidHttpClient, paramHttpUriRequest);
  }
  
  public static HttpResponse execute(HttpClient paramHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest) throws IOException {
    return SDK.getAgent().executeOnHttpClient(paramHttpClient, paramHttpHost, paramHttpRequest);
  }
  
  public static HttpResponse execute(HttpClient paramHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext) throws IOException {
    return SDK.getAgent().executeOnHttpClient(paramHttpClient, paramHttpHost, paramHttpRequest, paramHttpContext);
  }
  
  public static HttpResponse execute(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest) throws IOException {
    return SDK.getAgent().executeOnHttpClient(paramHttpClient, paramHttpUriRequest);
  }
  
  public static HttpResponse execute(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext) throws IOException {
    return SDK.getAgent().executeOnHttpClient(paramHttpClient, paramHttpUriRequest, paramHttpContext);
  }
  
  public static HttpResponse execute(AbstractHttpClient paramAbstractHttpClient, HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext) throws IOException {
    return SDK.getAgent().executeOnHttpClient(paramAbstractHttpClient, paramHttpUriRequest, paramHttpContext);
  }
  
  public static HttpResponse execute(DefaultHttpClient paramDefaultHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest) throws IOException {
    return SDK.getAgent().executeOnHttpClient((HttpClient)paramDefaultHttpClient, paramHttpHost, paramHttpRequest);
  }
  
  public static HttpResponse execute(DefaultHttpClient paramDefaultHttpClient, HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext) throws IOException {
    return SDK.getAgent().executeOnHttpClient((HttpClient)paramDefaultHttpClient, paramHttpHost, paramHttpRequest, paramHttpContext);
  }
  
  public static HttpResponse execute(DefaultHttpClient paramDefaultHttpClient, HttpUriRequest paramHttpUriRequest) throws IOException {
    return SDK.getAgent().executeOnHttpClient(paramDefaultHttpClient, paramHttpUriRequest);
  }
  
  public static HttpResponse execute(DefaultHttpClient paramDefaultHttpClient, HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext) throws IOException {
    return SDK.getAgent().executeOnHttpClient(paramDefaultHttpClient, paramHttpUriRequest, paramHttpContext);
  }
  
  public static int getResponseCode(HttpURLConnection paramHttpURLConnection) throws IOException {
    return SDK.getAgent().getResponseCodeOnHttpURLConnection(paramHttpURLConnection);
  }
  
  public static URLConnection openConnection(URL paramURL) throws IOException {
    return SDK.getAgent().openConnectionOnURLConnection(paramURL);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\android\app\CaMDOHTTPClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */