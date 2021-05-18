import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.ca.android.app.CaMDOWebView;

class nhi implements Runnable {
  nhi(nhg paramnhg) {}
  
  public void run() {
    try {
      if (nhg.b(this.a) != null)
        return; 
      nhg.a(this.a, new WebView(nhg.d(this.a).b().getApplicationContext()));
      String str = nhg.d(this.a).a().getAbsolutePath();
      WebSettings webSettings = nhg.b(this.a).getSettings();
      webSettings.setAppCacheEnabled(true);
      webSettings.setDatabaseEnabled(true);
      webSettings.setJavaScriptEnabled(true);
      webSettings.setDomStorageEnabled(true);
      webSettings.setAppCachePath(str);
      if (Build.VERSION.SDK_INT < 19)
        webSettings.setDatabasePath(str); 
      nhg.b(this.a).setWebChromeClient(nhg.a(nhg.c(this.a)));
      CaMDOWebView.setWebViewClient(nhg.b(this.a), nhg.e(this.a));
      nhg.f(this.a).a(new nig(nhg.b(this.a)));
      nhg.g(this.a);
      return;
    } catch (Throwable throwable) {
      if (nhg.c(this.a).e())
        nhg.c(this.a).a(nkf.webview_dispatcher_error_creating_webview, throwable, new Object[0]); 
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nhi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */