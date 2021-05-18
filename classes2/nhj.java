import com.ca.android.app.CaMDOWebView;

class nhj implements Runnable {
  nhj(nhg paramnhg, String paramString) {}
  
  public void run() {
    try {
      CaMDOWebView.loadUrl(nhg.b(this.b), this.a);
      return;
    } catch (Throwable throwable) {
      nhg.c(this.b).d(nkf.webview_dispatcher_error_loading_url, new Object[] { this.a, nhg.b(this.b) });
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nhj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */