import com.facebook.FacebookRequestError;
import com.facebook.share.model.SharePhoto;
import org.json.JSONException;
import org.json.JSONObject;

class bwc implements bim {
  bwc(bvy parambvy, bnr parambnr, SharePhoto paramSharePhoto) {}
  
  public void a(bix parambix) {
    FacebookRequestError facebookRequestError = parambix.a();
    if (facebookRequestError != null) {
      String str2 = facebookRequestError.f();
      String str1 = str2;
      if (str2 == null)
        str1 = "Error staging photo."; 
      this.a.a(new bhq(parambix, str1));
      return;
    } 
    JSONObject jSONObject1 = parambix.b();
    if (jSONObject1 == null) {
      this.a.a(new bhp("Error staging photo."));
      return;
    } 
    String str = jSONObject1.optString("uri");
    if (str == null) {
      this.a.a(new bhp("Error staging photo."));
      return;
    } 
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("url", str);
      jSONObject2.put("user_generated", this.b.e());
      this.a.a(jSONObject2);
      return;
    } catch (JSONException jSONException) {
      String str2 = jSONException.getLocalizedMessage();
      String str1 = str2;
      if (str2 == null)
        str1 = "Error staging photo."; 
      this.a.a(new bhp(str1));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bwc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */