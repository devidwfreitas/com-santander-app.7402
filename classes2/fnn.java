import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.santander.app.WebViewActivity;

public class fnn extends WebViewClient {
  private String b = this.a.v.m();
  
  public fnn(WebViewActivity paramWebViewActivity) {}
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap) {
    if (!paramString.toLowerCase().contains(this.b))
      paramWebView.stopLoading(); 
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString) {
    paramWebView.stopLoading();
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fnn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */