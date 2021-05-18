import android.os.Build;
import android.webkit.CookieManager;
import android.webkit.WebView;

final class gy implements njn {
  public void a(WebView paramWebView) {
    CookieManager cookieManager = CookieManager.getInstance();
    cookieManager.setAcceptCookie(true);
    if (Build.VERSION.SDK_INT >= 21)
      cookieManager.setAcceptThirdPartyCookies(paramWebView, true); 
    if (Build.VERSION.SDK_INT >= 12)
      CookieManager.setAcceptFileSchemeCookies(true); 
  }
  
  public String toString() {
    return "EnableCookieWebViewCreatedListener";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */