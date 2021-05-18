package com.datami.smi.g;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import javax.net.ssl.SSLContext;
import org.apache.http.conn.scheme.LayeredSocketFactory;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class a implements LayeredSocketFactory {
  private static final byte[] b = new byte[] { 80, 88, 20, 67, -8, 7 };
  
  private static int c = 63;
  
  private SSLContext a = null;
  
  private static SSLContext a() {
    int i;
    int j;
    int k;
    byte b = 84;
    try {
      byte[] arrayOfByte2 = b;
      byte[] arrayOfByte1 = new byte[3];
      if (arrayOfByte2 == null) {
        k = 4;
        j = 0;
        i = 3;
      } else {
        k = 4;
        j = 0;
        i = 84;
        arrayOfByte1[j] = (byte)i;
        j++;
      } 
    } catch (Exception exception) {
      throw new IOException(exception.getMessage());
    } 
    k++;
    i += b;
    exception[j] = (byte)i;
    j++;
  }
  
  private SSLContext b() {
    if (this.a == null)
      this.a = a(); 
    return this.a;
  }
  
  private static String c() {
    int j;
    int k;
    byte b;
    byte[] arrayOfByte1 = b;
    byte[] arrayOfByte2 = new byte[3];
    if (arrayOfByte1 == null) {
      i = 3;
      b = 4;
      k = 84;
      j = 0;
    } else {
      i = 4;
      k = 84;
      j = 0;
      arrayOfByte2[j] = (byte)k;
      j++;
    } 
    int m = b + 1;
    k += i;
    int i = m;
    arrayOfByte2[j] = (byte)k;
    j++;
  }
  
  public Socket connectSocket(Socket paramSocket, String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2, HttpParams paramHttpParams) {
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
  
  public Socket createSocket() {
    if (this.a == null)
      this.a = a(); 
    return this.a.getSocketFactory().createSocket();
  }
  
  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean) {
    if (this.a == null)
      this.a = a(); 
    return this.a.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
  
  public boolean equals(Object paramObject) {
    return (paramObject != null && paramObject.getClass().equals(a.class));
  }
  
  public int hashCode() {
    return a.class.hashCode();
  }
  
  public boolean isSecure(Socket paramSocket) {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\g\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */