import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.santander.app.webview.presentation.WebViewActivity;

public class nep extends WebViewClient {
  public nep(WebViewActivity paramWebViewActivity) {}
  
  public void onPageFinished(WebView paramWebView, String paramString) {
    this.a.d();
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString) {
    if (!Uri.parse(paramString).getHost().equals(Uri.parse(WebViewActivity.b).getHost())) {
      WebViewActivity.a(this.a).c(this.a.getString(2131297347));
      WebViewActivity.b(this.a).stopLoading();
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nep.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */