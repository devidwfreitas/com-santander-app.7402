import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.ca.android.app.CaMDOWebView;
import org.json.JSONException;
import org.json.JSONObject;

public class boh extends bqy {
  private static final String d = boh.class.getName();
  
  private static final int e = 1500;
  
  private boolean f;
  
  public boh(Context paramContext, String paramString1, String paramString2) {
    super(paramContext, paramString1);
    b(paramString2);
  }
  
  protected Bundle a(String paramString) {
    Bundle bundle = bqq.d(Uri.parse(paramString).getQuery());
    paramString = bundle.getString("bridge_args");
    bundle.remove("bridge_args");
    if (!bqq.a(paramString))
      try {
        bundle.putBundle("com.facebook.platform.protocol.BRIDGE_ARGS", bna.a(new JSONObject(paramString)));
      } catch (JSONException jSONException) {
        bqq.a(d, "Unable to parse bridge_args JSON", (Throwable)jSONException);
      }  
    String str = bundle.getString("method_results");
    bundle.remove("method_results");
    if (!bqq.a(str)) {
      paramString = str;
      if (bqq.a(str))
        paramString = "{}"; 
      try {
        bundle.putBundle("com.facebook.platform.protocol.RESULT_ARGS", bna.a(new JSONObject(paramString)));
      } catch (JSONException jSONException) {
        bqq.a(d, "Unable to parse bridge_args JSON", (Throwable)jSONException);
      } 
    } 
    bundle.remove("version");
    bundle.putInt("com.facebook.platform.protocol.PROTOCOL_VERSION", bqa.a());
    return bundle;
  }
  
  public void cancel() {
    WebView webView = d();
    if (!c() || b() || webView == null || !webView.isShown()) {
      super.cancel();
      return;
    } 
    if (!this.f) {
      this.f = true;
      CaMDOWebView.loadUrl(webView, "javascript:" + "(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();");
      (new Handler(Looper.getMainLooper())).postDelayed(new boi(this), 1500L);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\boh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */