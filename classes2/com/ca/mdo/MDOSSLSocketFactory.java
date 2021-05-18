package com.ca.mdo;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.SSLSocketFactory;

public class MDOSSLSocketFactory extends SSLSocketFactory {
  SSLContext sslContext = SSLContext.getInstance("TLS");
  
  public MDOSSLSocketFactory(KeyStore paramKeyStore) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
    super(paramKeyStore);
    X509TrustManager x509TrustManager = new X509TrustManager() {
        public void checkClientTrusted(X509Certificate[] param1ArrayOfX509Certificate, String param1String) throws CertificateException {}
        
        public void checkServerTrusted(X509Certificate[] param1ArrayOfX509Certificate, String param1String) throws CertificateException {
          boolean bool = false;
          int j = 0;
          int k = 0;
          int i = 0;
          if (MDOSSLPinning.getCert() != null) {
            if (MDOSSLPinning.getmSSLPinningMode().equals("certificate")) {
              X509Certificate x509Certificate = MDOSSLSocketFactory.createCert(MDOSSLPinning.getCert());
              boolean bool1 = false;
              j = param1ArrayOfX509Certificate.length;
              while (true) {
                bool = bool1;
                if (i < j)
                  if (x509Certificate.equals(param1ArrayOfX509Certificate[i])) {
                    bool = true;
                  } else {
                    i++;
                    continue;
                  }  
                if (!bool)
                  throw new CertificateException("Server certificate chain did not contain the pinned certificate"); 
                break;
              } 
            } else if (MDOSSLPinning.getmSSLPinningMode().equals("pk")) {
              boolean bool1 = false;
              j = param1ArrayOfX509Certificate.length;
              i = bool;
              while (true) {
                bool = bool1;
                if (i < j) {
                  byte[] arrayOfByte = param1ArrayOfX509Certificate[i].getPublicKey().toString().getBytes();
                  if (MDOSSLPinning.getCert().equals(arrayOfByte)) {
                    bool = true;
                  } else {
                    i++;
                    continue;
                  } 
                } 
                if (!bool)
                  throw new CertificateException("Server certificate chain did not contain the pinned public key"); 
                break;
              } 
            } else if (MDOSSLPinning.getmSSLPinningMode().equals("hash")) {
              boolean bool1 = false;
              param1String = new String(MDOSSLPinning.getCert());
              k = param1ArrayOfX509Certificate.length;
              i = j;
              while (true) {
                bool = bool1;
                if (i < k)
                  if (param1String.equals(MDOPublicKeyHash.toHash(param1ArrayOfX509Certificate[i].getPublicKey()))) {
                    bool = true;
                  } else {
                    i++;
                    continue;
                  }  
                if (!bool)
                  throw new CertificateException("Server certificate chain did not contain the pinned public key HASH"); 
                break;
              } 
            } else if (MDOSSLPinning.getmSSLPinningMode().equals("sha1signature")) {
              boolean bool1 = false;
              byte[] arrayOfByte = MDOSSLPinning.getCert();
              j = param1ArrayOfX509Certificate.length;
              i = k;
              while (true) {
                bool = bool1;
                if (i < j)
                  if (param1ArrayOfX509Certificate[i].getSignature().equals(arrayOfByte)) {
                    bool = true;
                  } else {
                    i++;
                    continue;
                  }  
                if (!bool)
                  throw new CertificateException("Server certificate chain did not contain matching signature"); 
                break;
              } 
            } else {
              throw new CertificateException("No proper Mode is set");
            } 
          } else {
            throw new CertificateException("No data for pinning is found");
          } 
        }
        
        public X509Certificate[] getAcceptedIssuers() {
          return null;
        }
      };
    this.sslContext.init(null, new TrustManager[] { x509TrustManager }, null);
  }
  
  public static X509Certificate createCert(byte[] paramArrayOfbyte) {
    try {
      return (X509Certificate)CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(paramArrayOfbyte));
    } catch (Exception exception) {
      throw new RuntimeException(exception);
    } 
  }
  
  public Socket createSocket() throws IOException {
    return this.sslContext.getSocketFactory().createSocket();
  }
  
  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean) throws IOException, UnknownHostException {
    return this.sslContext.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\MDOSSLSocketFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */