package com.ca.org.acra.util;

import com.ca.org.acra.ACRA;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;

public final class HttpRequest {
  private int connectionTimeOut = 3000;
  
  private String login;
  
  private int maxNrRetries = 3;
  
  private String password;
  
  private int socketTimeOut = 3000;
  
  private UsernamePasswordCredentials getCredentials() {
    return (this.login != null || this.password != null) ? new UsernamePasswordCredentials(this.login, this.password) : null;
  }
  
  private HttpClient getHttpClient() {
    BasicHttpParams basicHttpParams = new BasicHttpParams();
    basicHttpParams.setParameter("http.protocol.cookie-policy", "rfc2109");
    HttpConnectionParams.setConnectionTimeout((HttpParams)basicHttpParams, this.connectionTimeOut);
    HttpConnectionParams.setSoTimeout((HttpParams)basicHttpParams, this.socketTimeOut);
    HttpConnectionParams.setSocketBufferSize((HttpParams)basicHttpParams, 8192);
    SchemeRegistry schemeRegistry = new SchemeRegistry();
    schemeRegistry.register(new Scheme("http", (SocketFactory)new PlainSocketFactory(), 80));
    if (ACRA.getConfig().disableSSLCertValidation()) {
      schemeRegistry.register(new Scheme("https", new FakeSocketFactory(), 443));
      defaultHttpClient = new DefaultHttpClient((ClientConnectionManager)new ThreadSafeClientConnManager((HttpParams)basicHttpParams, schemeRegistry), (HttpParams)basicHttpParams);
      defaultHttpClient.setHttpRequestRetryHandler(new SocketTimeOutRetryHandler((HttpParams)basicHttpParams, this.maxNrRetries));
      return (HttpClient)defaultHttpClient;
    } 
    defaultHttpClient.register(new Scheme("https", (SocketFactory)SSLSocketFactory.getSocketFactory(), 443));
    DefaultHttpClient defaultHttpClient = new DefaultHttpClient((ClientConnectionManager)new ThreadSafeClientConnManager((HttpParams)basicHttpParams, (SchemeRegistry)defaultHttpClient), (HttpParams)basicHttpParams);
    defaultHttpClient.setHttpRequestRetryHandler(new SocketTimeOutRetryHandler((HttpParams)basicHttpParams, this.maxNrRetries));
    return (HttpClient)defaultHttpClient;
  }
  
  private HttpPost getHttpPost(URL paramURL, Map<?, ?> paramMap) throws UnsupportedEncodingException {
    HttpPost httpPost = new HttpPost(paramURL.toString());
    UsernamePasswordCredentials usernamePasswordCredentials = getCredentials();
    if (usernamePasswordCredentials != null)
      httpPost.addHeader(BasicScheme.authenticate((Credentials)usernamePasswordCredentials, "UTF-8", false)); 
    httpPost.setHeader("User-Agent", "Android");
    httpPost.setHeader("Accept", "text/html,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5");
    httpPost.setHeader("Content-Type", "application/x-www-form-urlencoded");
    httpPost.setEntity((HttpEntity)new StringEntity(getParamsAsString(paramMap), "UTF-8"));
    return httpPost;
  }
  
  private String getParamsAsString(Map<?, ?> paramMap) throws UnsupportedEncodingException {
    StringBuilder stringBuilder = new StringBuilder();
    for (Object object1 : paramMap.keySet()) {
      if (stringBuilder.length() != 0)
        stringBuilder.append('&'); 
      Object object = paramMap.get(object1);
      if (object == null)
        object = ""; 
      stringBuilder.append(URLEncoder.encode(object1.toString(), "UTF-8"));
      stringBuilder.append('=');
      stringBuilder.append(URLEncoder.encode(object.toString(), "UTF-8"));
    } 
    return stringBuilder.toString();
  }
  
  public void sendPost(URL paramURL, Map<?, ?> paramMap) throws IOException {
    HttpClient httpClient = getHttpClient();
    HttpPost httpPost = getHttpPost(paramURL, paramMap);
    ACRA.log.d(ACRA.LOG_TAG, "Sending request to " + paramURL);
    Iterator iterator = paramMap.keySet().iterator();
    while (iterator.hasNext())
      iterator.next(); 
    HttpResponse httpResponse = httpClient.execute((HttpUriRequest)httpPost, (HttpContext)new BasicHttpContext());
    if (httpResponse != null) {
      if (httpResponse.getStatusLine() != null) {
        String str = Integer.toString(httpResponse.getStatusLine().getStatusCode());
        if (str.startsWith("4") || str.startsWith("5"))
          throw new IOException("Host returned error code " + str); 
      } 
      EntityUtils.toString(httpResponse.getEntity());
    } 
  }
  
  public void setConnectionTimeOut(int paramInt) {
    this.connectionTimeOut = paramInt;
  }
  
  public void setLogin(String paramString) {
    this.login = paramString;
  }
  
  public void setMaxNrRetries(int paramInt) {
    this.maxNrRetries = paramInt;
  }
  
  public void setPassword(String paramString) {
    this.password = paramString;
  }
  
  public void setSocketTimeOut(int paramInt) {
    this.socketTimeOut = paramInt;
  }
  
  private static class SocketTimeOutRetryHandler implements HttpRequestRetryHandler {
    private final HttpParams httpParams;
    
    private final int maxNrRetries;
    
    private SocketTimeOutRetryHandler(HttpParams param1HttpParams, int param1Int) {
      this.httpParams = param1HttpParams;
      this.maxNrRetries = param1Int;
    }
    
    public boolean retryRequest(IOException param1IOException, int param1Int, HttpContext param1HttpContext) {
      if (param1IOException instanceof java.net.SocketTimeoutException) {
        if (param1Int <= this.maxNrRetries) {
          if (this.httpParams != null) {
            param1Int = HttpConnectionParams.getSoTimeout(this.httpParams) * 2;
            HttpConnectionParams.setSoTimeout(this.httpParams, param1Int);
            ACRA.log.d(ACRA.LOG_TAG, "SocketTimeOut - increasing time out to " + param1Int + " millis and trying again");
            return true;
          } 
          ACRA.log.d(ACRA.LOG_TAG, "SocketTimeOut - no HttpParams, cannot increase time out. Trying again with current settings");
          return true;
        } 
        ACRA.log.d(ACRA.LOG_TAG, "SocketTimeOut but exceeded max number of retries : " + this.maxNrRetries);
      } 
      return false;
    }
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acr\\util\HttpRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */