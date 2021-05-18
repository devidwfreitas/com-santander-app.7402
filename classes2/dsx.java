import java.net.URI;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;

public final class dsx extends HttpEntityEnclosingRequestBase {
  public dsx() {}
  
  public dsx(String paramString) {
    setURI(URI.create(paramString));
  }
  
  public String getMethod() {
    return "PATCH";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dsx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */