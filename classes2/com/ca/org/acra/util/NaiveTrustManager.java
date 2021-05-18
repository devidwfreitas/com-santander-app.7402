package com.ca.org.acra.util;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

class NaiveTrustManager implements X509TrustManager {
  public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) throws CertificateException {}
  
  public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) throws CertificateException {}
  
  public X509Certificate[] getAcceptedIssuers() {
    return new X509Certificate[0];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acr\\util\NaiveTrustManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */