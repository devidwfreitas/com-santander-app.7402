import java.net.Socket;
import javax.net.ssl.SSLContext;
import org.apache.http.conn.ssl.SSLSocketFactory;

public class jce extends SSLSocketFactory {
  private SSLContext a;
  
  public jce(SSLContext paramSSLContext) {
    super(null);
    this.a = paramSSLContext;
  }
  
  public Socket createSocket() {
    return this.a.getSocketFactory().createSocket();
  }
  
  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean) {
    return this.a.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jce.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */