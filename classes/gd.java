import android.webkit.JavascriptInterface;
import org.json.JSONArray;
import org.json.JSONException;

class gd {
  gd(gb paramgb, fw paramfw) {}
  
  @JavascriptInterface
  public void setValue(String paramString) {
    try {
      this.a.a(new JSONArray(paramString));
      return;
    } catch (JSONException jSONException) {
      this.a.a((Exception)jSONException);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */