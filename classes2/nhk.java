import android.annotation.TargetApi;
import android.net.http.SslError;
import android.os.SystemClock;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class nhk extends WebViewClient {
  nhk(nhg paramnhg) {}
  
  public void onLoadResource(WebView paramWebView, String paramString) {
    super.onLoadResource(paramWebView, paramString);
  }
  
  public void onPageFinished(WebView paramWebView, String paramString) {
    super.onPageFinished(paramWebView, paramString);
    nhg.a(this.a, SystemClock.elapsedRealtime());
    if (3 == nhg.a(this.a).getAndSet(2)) {
      nhg.a(this.a).set(3);
      nhg.c(this.a).d(nkf.webview_dispatcher_error_loading_url, new Object[] { paramString, paramWebView });
      return;
    } 
    nhg.f(this.a).a(new nhl(this, paramWebView));
    nhg.f(this.a).a(new nih(nhg.b(this.a), true));
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2) {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    if (3 == nhg.a(this.a).getAndSet(3))
      return; 
    nhg.a(this.a, SystemClock.uptimeMillis());
    nhg.f(this.a).a(new nih(nhg.b(this.a), false));
  }
  
  public void onReceivedError(WebView paramWebView, WebResourceRequest paramWebResourceRequest, WebResourceError paramWebResourceError) {
    nhg.a(this.a).set(3);
    if (nhg.c(this.a).e())
      nhg.c(this.a).d(nkf.webview_dispatcher_rcvd_error, new Object[] { paramWebResourceError }); 
    super.onReceivedError(paramWebView, paramWebResourceRequest, paramWebResourceError);
  }
  
  @TargetApi(21)
  public void onReceivedHttpError(WebView paramWebView, WebResourceRequest paramWebResourceRequest, WebResourceResponse paramWebResourceResponse) {
    nhg.c(this.a).d(nkf.webview_dispatcher_rcvd_http_error, new Object[] { paramWebResourceRequest.getUrl(), Integer.valueOf(paramWebResourceResponse.getStatusCode()), paramWebResourceResponse.getReasonPhrase() });
    super.onReceivedHttpError(paramWebView, paramWebResourceRequest, paramWebResourceResponse);
  }
  
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError) {
    nhg.a(this.a).set(3);
    nhg.c(this.a).d(nkf.webview_dispatcher_rcvd_ssl_error, new Object[] { paramWebView, paramWebView.getUrl(), paramSslError });
    super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
  }
  
  @TargetApi(21)
  public boolean shouldOverrideUrlLoading(WebView paramWebView, WebResourceRequest paramWebResourceRequest) {
    return shouldOverrideUrlLoading(paramWebView, paramWebResourceRequest.getUrl().toString());
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString) {
    if (njx.a(paramString))
      try {
        if (nhg.d(this.a).k() || njx.b(paramString)) {
          nhg.h(this.a).c(paramString);
          return true;
        } 
        nhg.c(this.a).a(nkf.webview_dispatcher_error_remote_command_not_allowed, null, new Object[] { paramString });
        return true;
      } catch (Throwable throwable) {
        nhg.c(this.a).a(throwable);
        return true;
      }  
    nhg.c(this.a).e(nkf.webview_dispatcher_warn_override_url_loading, new Object[] { paramString });
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nhk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */