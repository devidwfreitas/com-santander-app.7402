import android.net.Uri;
import android.webkit.WebView;
import com.ca.android.app.CaMDOWebView;
import org.json.JSONArray;

class gb implements fa<Void, fd<JSONArray>> {
  gb(fz paramfz, ez paramez1, Uri paramUri, ez paramez2) {}
  
  public fd<JSONArray> a(fd<Void> paramfd) {
    fw<JSONArray> fw = new fw();
    WebView webView = new WebView(fz.a(this.d));
    webView.getSettings().setJavaScriptEnabled(true);
    webView.setNetworkAvailable(false);
    CaMDOWebView.setWebViewClient(webView, new gc(this));
    webView.addJavascriptInterface(new gd(this, fw), "boltsWebViewAppLinkResolverResult");
    if (this.a.a() != null) {
      String str = ((String)this.a.a()).split(";")[0];
      webView.loadDataWithBaseURL(this.b.toString(), this.c.a(), str, null, null);
      return fw.a();
    } 
    paramfd = null;
    webView.loadDataWithBaseURL(this.b.toString(), this.c.a(), (String)paramfd, null, null);
    return fw.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */