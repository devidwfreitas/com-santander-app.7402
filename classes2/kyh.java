import android.text.TextUtils;
import org.json.JSONObject;

class kyh implements gkw<is> {
  kyh(kyf paramkyf, kxl paramkxl1, kxl paramkxl2) {}
  
  public void a(is paramis) {
    JSONObject jSONObject;
    String str;
    if (paramis == null)
      return; 
    if (paramis.a() != null && paramis.a().intValue() == 200) {
      jSONObject = paramis.c();
      this.a.a(mys.a().a(jSONObject.toString(), kri.class));
      return;
    } 
    kxl<String> kxl1 = this.b;
    if (!TextUtils.isEmpty(jSONObject.b())) {
      str = jSONObject.b();
    } else {
      str = "";
    } 
    kxl1.a(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kyh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */