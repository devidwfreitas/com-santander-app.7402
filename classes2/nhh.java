import android.text.TextUtils;
import com.ca.android.app.CaMDOWebView;
import java.util.Locale;

class nhh implements Runnable {
  nhh(nhg paramnhg, boolean paramBoolean, String paramString) {}
  
  public void run() {
    int i = nhg.a(this.c).getAndSet(1);
    if (i != 2) {
      nhg.a(this.c).set(i);
      return;
    } 
    try {
      if (this.a) {
        CaMDOWebView.loadUrl(nhg.b(this.c), "javascript:utag.track('kill_visitor_session', { event: 'kill_visitor_session', 'cp.trace_id' : utag.data['cp.trace_id'] });");
        CaMDOWebView.loadUrl(nhg.b(this.c), "javascript:document.cookie = 'trace_id=; expires=Thu, 01 Jan 1970 00:00:01 GMT; path=/'");
      } 
      if (!TextUtils.isEmpty(this.b)) {
        String str = String.format(Locale.ROOT, "javascript:document.cookie = 'trace_id=%s; expires=0; path=/';", new Object[] { this.b });
        CaMDOWebView.loadUrl(nhg.b(this.c), str);
      } 
      nhg.b(this.c).reload();
      return;
    } catch (Throwable throwable) {
      nhg.c(this.c).a(throwable);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nhh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */