import android.app.Activity;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.santander.app.webview.presentation.WebViewActivity;

public class neq extends WebChromeClient {
  public neq(WebViewActivity paramWebViewActivity, Activity paramActivity) {}
  
  public void onProgressChanged(WebView paramWebView, int paramInt) {
    this.a.setProgress(paramInt * 1000);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\neq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */