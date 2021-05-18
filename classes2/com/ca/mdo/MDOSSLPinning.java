package com.ca.mdo;

import java.security.KeyStore;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolVersion;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

public class MDOSSLPinning {
  public static byte[] cert;
  
  public static String mSSLPinningMode = "none";
  
  private static MDOSSLPinning ourInstance = new MDOSSLPinning();
  
  public static byte[] getCert() {
    return cert;
  }
  
  public static DefaultHttpClient getHTTPClient() {
    try {
      KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
      keyStore.load(null, null);
      MDOSSLSocketFactory mDOSSLSocketFactory = new MDOSSLSocketFactory(keyStore);
      mDOSSLSocketFactory.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      BasicHttpParams basicHttpParams = new BasicHttpParams();
      HttpProtocolParams.setVersion((HttpParams)basicHttpParams, (ProtocolVersion)HttpVersion.HTTP_1_1);
      HttpProtocolParams.setContentCharset((HttpParams)basicHttpParams, "UTF-8");
      SchemeRegistry schemeRegistry = new SchemeRegistry();
      schemeRegistry.register(new Scheme("http", (SocketFactory)PlainSocketFactory.getSocketFactory(), 80));
      schemeRegistry.register(new Scheme("https", (SocketFactory)mDOSSLSocketFactory, 443));
      return new DefaultHttpClient((ClientConnectionManager)new ThreadSafeClientConnManager((HttpParams)basicHttpParams, schemeRegistry), (HttpParams)basicHttpParams);
    } catch (Exception exception) {
      CALog.e("Exception in SSL Handshake with Pinning Mode" + mSSLPinningMode);
      CALog.e("" + exception.getMessage() + ":", exception);
      return null;
    } 
  }
  
  public static MDOSSLPinning getInstance() {
    return ourInstance;
  }
  
  public static String getmSSLPinningMode() {
    return mSSLPinningMode;
  }
  
  public static void setCert(byte[] paramArrayOfbyte) {
    cert = paramArrayOfbyte;
  }
  
  public static void setmSSLPinningMode(String paramString) {
    mSSLPinningMode = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\MDOSSLPinning.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */