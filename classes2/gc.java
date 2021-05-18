import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ca.android.app.CaMDOWebView;

class gc extends WebViewClient {
  private boolean b = false;
  
  gc(gb paramgb) {}
  
  private void a(WebView paramWebView) {
    if (!this.b) {
      this.b = true;
      CaMDOWebView.loadUrl(paramWebView, "javascript:boltsWebViewAppLinkResolverResult.setValue((function() {  var metaTags = document.getElementsByTagName('meta');  var results = [];  for (var i = 0; i < metaTags.length; i++) {    var property = metaTags[i].getAttribute('property');    if (property && property.substring(0, 'al:'.length) === 'al:') {      var tag = { \"property\": metaTags[i].getAttribute('property') };      if (metaTags[i].hasAttribute('content')) {        tag['content'] = metaTags[i].getAttribute('content');      }      results.push(tag);    }  }  return JSON.stringify(results);})())");
    } 
  }
  
  public void onLoadResource(WebView paramWebView, String paramString) {
    super.onLoadResource(paramWebView, paramString);
    a(paramWebView);
  }
  
  public void onPageFinished(WebView paramWebView, String paramString) {
    super.onPageFinished(paramWebView, paramString);
    a(paramWebView);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */