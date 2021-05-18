package com.ca.org.acra.util;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.scheme.LayeredSocketFactory;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class FakeSocketFactory implements SocketFactory, LayeredSocketFactory {
  private SSLContext sslcontext = null;
  
  private static SSLContext createEasySSLContext() throws IOException {
    try {
      SSLContext sSLContext = SSLContext.getInstance("TLS");
      sSLContext.init(null, new TrustManager[] { new NaiveTrustManager() }, null);
      return sSLContext;
    } catch (Exception exception) {
      throw new IOException(exception.getMessage());
    } 
  }
  
  private SSLContext getSSLContext() throws IOException {
    if (this.sslcontext == null)
      this.sslcontext = createEasySSLContext(); 
    return this.sslcontext;
  }
  
  public Socket connectSocket(Socket paramSocket, String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2, HttpParams paramHttpParams) throws IOException {
    int i = HttpConnectionParams.getConnectionTimeout(paramHttpParams);
    int j = HttpConnectionParams.getSoTimeout(paramHttpParams);
    InetSocketAddress inetSocketAddress = new InetSocketAddress(paramString, paramInt1);
    if (paramSocket == null)
      paramSocket = createSocket(); 
    paramSocket = paramSocket;
    if (paramInetAddress != null || paramInt2 > 0) {
      paramInt1 = paramInt2;
      if (paramInt2 < 0)
        paramInt1 = 0; 
      paramSocket.bind(new InetSocketAddress(paramInetAddress, paramInt1));
    } 
    paramSocket.connect(inetSocketAddress, i);
    paramSocket.setSoTimeout(j);
    return paramSocket;
  }
  
  public Socket createSocket() throws IOException {
    return getSSLContext().getSocketFactory().createSocket();
  }
  
  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean) throws IOException {
    return getSSLContext().getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
  
  public boolean isSecure(Socket paramSocket) throws IllegalArgumentException {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acr\\util\FakeSocketFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */