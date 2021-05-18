import android.net.Uri;
import com.ca.android.app.CaMDOHTTPClient;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.Callable;

class ge implements Callable<Void> {
  ge(fz paramfz, Uri paramUri, ez paramez1, ez paramez2) {}
  
  public Void a() {
    null = new URL(this.a.toString());
    URL uRL = null;
    while (null != null) {
      URLConnection uRLConnection = CaMDOHTTPClient.openConnection(null);
      if (uRLConnection instanceof HttpURLConnection)
        ((HttpURLConnection)uRLConnection).setInstanceFollowRedirects(true); 
      uRLConnection.setRequestProperty("Prefer-Html-Meta-Tags", "al");
      uRLConnection.connect();
      if (uRLConnection instanceof HttpURLConnection) {
        HttpURLConnection httpURLConnection = (HttpURLConnection)uRLConnection;
        if (CaMDOHTTPClient.getResponseCode(httpURLConnection) >= 300 && CaMDOHTTPClient.getResponseCode(httpURLConnection) < 400) {
          uRL = new URL(httpURLConnection.getHeaderField("Location"));
          httpURLConnection.disconnect();
        } else {
          uRL = null;
        } 
        URL uRL2 = uRL;
        URLConnection uRLConnection1 = uRLConnection;
        uRL1 = uRL2;
        continue;
      } 
      uRL = uRL1;
      URL uRL1 = null;
    } 
    try {
      this.b.a(fz.a((URLConnection)uRL));
      this.c.a(uRL.getContentType());
      return null;
    } finally {
      if (uRL instanceof HttpURLConnection)
        ((HttpURLConnection)uRL).disconnect(); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ge.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */