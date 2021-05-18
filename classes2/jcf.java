import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

public class jcf implements X509TrustManager {
  public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public X509Certificate[] getAcceptedIssuers() {
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jcf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */