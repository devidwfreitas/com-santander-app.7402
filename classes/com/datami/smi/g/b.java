package com.datami.smi.g;

import java.security.KeyStore;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public final class b implements X509TrustManager {
  private static final byte[] b = new byte[] { 
      29, -31, 22, -117, -1, 79, -84, 2, -3, 2, 
      -1, 84, -77, 12, -13, 13, -6, 2, -13, 82, 
      -70, -9, -6, 7, 10 };
  
  private static int c = 183;
  
  private X509TrustManager a = null;
  
  public b(KeyStore paramKeyStore) {
    TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
    trustManagerFactory.init((KeyStore)null);
    TrustManager[] arrayOfTrustManager = trustManagerFactory.getTrustManagers();
    if (arrayOfTrustManager.length == 0) {
      int i = b[4] + 1;
      throw new NoSuchAlgorithmException(a(i, i, i));
    } 
    this.a = (X509TrustManager)arrayOfTrustManager[0];
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt1 = 3 - paramInt1 * 4;
    byte[] arrayOfByte2 = b;
    paramInt2 = 22 - paramInt2 * 3;
    byte[] arrayOfByte1 = new byte[paramInt2];
    int j = paramInt2 - 1;
    if (arrayOfByte2 == null) {
      byte b1 = -1;
      paramInt2 = paramInt1;
      i = paramInt1;
      paramInt3 = j;
      paramInt1 = b1;
    } else {
      i = paramInt1;
      paramInt1 = paramInt3 * 2 + 110;
      paramInt2 = -1;
      int m = i + 1;
      arrayOfByte1[++paramInt2] = (byte)paramInt1;
    } 
    paramInt3 = i + -paramInt3;
    int i = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = paramInt3;
    int k = i + 1;
    arrayOfByte1[++paramInt2] = (byte)paramInt1;
  }
  
  public final void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {
    this.a.checkClientTrusted(paramArrayOfX509Certificate, paramString);
  }
  
  public final void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {
    if (paramArrayOfX509Certificate != null && paramArrayOfX509Certificate.length == 1)
      paramArrayOfX509Certificate[0].checkValidity(); 
  }
  
  public final X509Certificate[] getAcceptedIssuers() {
    return this.a.getAcceptedIssuers();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\g\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */