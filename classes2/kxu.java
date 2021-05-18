import android.text.TextUtils;
import org.json.JSONObject;

class kxu implements gkw<is> {
  kxu(kxn paramkxn, kxl paramkxl1, kxl paramkxl2) {}
  
  public void a(is paramis) {
    String str;
    if (paramis == null) {
      this.a.a("");
      return;
    } 
    if (paramis.a() != null && paramis.a().intValue() == 200) {
      try {
        JSONObject jSONObject = paramis.c().getJSONObject("scheduling");
        if (jSONObject != null && jSONObject.has("protocol")) {
          this.b.a(jSONObject.getJSONObject("protocol").getString("number"));
          return;
        } 
      } catch (Exception exception) {
        exception.printStackTrace();
        kxl<String> kxl2 = this.a;
        if (!TextUtils.isEmpty(paramis.b())) {
          str = paramis.b();
        } else {
          str = "";
        } 
        kxl2.a(str);
        return;
      } 
      this.b.a("");
      return;
    } 
    kxl<String> kxl1 = this.a;
    if (!TextUtils.isEmpty(str.b())) {
      str = str.b();
    } else {
      str = "";
    } 
    kxl1.a(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kxu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */