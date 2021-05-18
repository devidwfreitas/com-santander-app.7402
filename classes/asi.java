import android.annotation.TargetApi;
import android.util.Log;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import com.ca.android.app.CaMDOProgressBar;
import com.ca.android.app.CaMDOWebView;

public class asi extends WebViewClient {
  private static final String a = asi.class.getName();
  
  private ProgressBar b;
  
  private boolean c;
  
  private WebView d;
  
  public asi(ProgressBar paramProgressBar, WebView paramWebView) {
    this.b = paramProgressBar;
    this.d = paramWebView;
  }
  
  public boolean a(String paramString) {
    String str = ase.g(ard.a().T());
    if (paramString.contains(str)) {
      Log.d(a, "haveSameHostname TRUE - hostname: << " + str + " >> - compare to: " + paramString);
      return true;
    } 
    Log.d(a, "haveSameHostname FALSE - hostname: << " + str + " >> - compare to: " + paramString);
    return false;
  }
  
  public void onPageFinished(WebView paramWebView, String paramString) {
    super.onPageFinished(paramWebView, paramString);
    Log.d(a, "Finished loading URL init: " + paramString);
    CaMDOProgressBar.setVisibility(this.b, 8);
    this.b.setIndeterminate(false);
    this.d.setVisibility(0);
    Log.d(a, "Finished loading URL end");
  }
  
  @TargetApi(24)
  public boolean shouldOverrideUrlLoading(WebView paramWebView, WebResourceRequest paramWebResourceRequest) {
    String str = paramWebResourceRequest.getUrl().toString();
    this.c = a(str);
    Log.d(a, "Loading URL init: " + str);
    if (a(str)) {
      CaMDOWebView.loadUrl(paramWebView, str);
      this.d.setVisibility(8);
      Log.d(a, "Loading URL end: " + str + " - haveSameHostname: " + this.c);
      return true;
    } 
    CaMDOWebView.loadUrl(paramWebView, ard.a().T());
    this.d.setVisibility(8);
    Log.d(a, "Url not permitted! - haveSameHostname: " + this.c);
    return false;
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString) {
    Log.d(a, "Loading URL init: " + paramString);
    this.c = a(paramString);
    if (this.c) {
      CaMDOWebView.loadUrl(paramWebView, paramString);
      Log.d(a, "Loading URL end: " + paramString + " - haveSameHostname: " + this.c);
      return true;
    } 
    Log.d(a, "Url not permitted! - haveSameHostname: " + this.c);
    CaMDOWebView.loadUrl(paramWebView, ard.a().T());
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\asi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */