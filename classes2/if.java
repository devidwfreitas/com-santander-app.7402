import com.ca.android.app.CaMDOHTTPClient;
import java.io.BufferedInputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;

public class if extends iz {
  private SSLContext a;
  
  private void b(HttpURLConnection paramHttpURLConnection) {
    if (ii.b != null)
      try {
        if (this.a == null) {
          Certificate certificate = CertificateFactory.getInstance("X.509").generateCertificate(new BufferedInputStream(ii.b));
          KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
          keyStore.load(null, null);
          keyStore.setCertificateEntry("ca", certificate);
          TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
          trustManagerFactory.init(keyStore);
          this.a = SSLContext.getInstance("TLS");
          this.a.init(null, trustManagerFactory.getTrustManagers(), null);
        } 
        ((HttpsURLConnection)paramHttpURLConnection).setSSLSocketFactory(this.a.getSocketFactory());
        return;
      } catch (Exception exception) {
        return;
      }  
  }
  
  public is a(ir paramir) {
    a(paramir.g());
    URL uRL = new URL(ii.a, paramir.b());
    try {
      HttpURLConnection httpURLConnection = (HttpURLConnection)CaMDOHTTPClient.openConnection(uRL);
    } catch (Exception exception) {
      return a((is)null, (HttpURLConnection)paramir, exception);
    } finally {
      paramir = null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\if.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */