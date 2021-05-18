import com.facebook.FacebookRequestError;
import org.json.JSONObject;

class bwa implements bim {
  bwa(bvy parambvy, bnr parambnr) {}
  
  public void a(bix parambix) {
    FacebookRequestError facebookRequestError = parambix.a();
    if (facebookRequestError != null) {
      String str2 = facebookRequestError.f();
      String str1 = str2;
      if (str2 == null)
        str1 = "Error staging Open Graph object."; 
      this.a.a(new bhq(parambix, str1));
      return;
    } 
    JSONObject jSONObject = parambix.b();
    if (jSONObject == null) {
      this.a.a(new bhq(parambix, "Error staging Open Graph object."));
      return;
    } 
    String str = jSONObject.optString("id");
    if (str == null) {
      this.a.a(new bhq(parambix, "Error staging Open Graph object."));
      return;
    } 
    this.a.a(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bwa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */