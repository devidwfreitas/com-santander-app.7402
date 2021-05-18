import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.santander.app.WebViewActivity;

public class fno extends WebViewClient {
  private fno(WebViewActivity paramWebViewActivity) {}
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString) {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fno.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */