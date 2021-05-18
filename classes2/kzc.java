import android.text.TextUtils;
import org.json.JSONObject;

class kzc implements gkw<is> {
  kzc(kyz paramkyz, kxl paramkxl1, kxl paramkxl2) {}
  
  public void a(is paramis) {
    String str;
    if (paramis != null && paramis.a().intValue() == 200)
      try {
        JSONObject jSONObject = paramis.c();
        if (jSONObject != null) {
          kob kob = mys.a().<kob>a(jSONObject.toString(), kob.class);
          this.a.a(kob);
          return;
        } 
        this.a.a(null);
        return;
      } catch (Exception exception) {
        exception.printStackTrace();
        this.b.a("");
        return;
      }  
    kxl<String> kxl1 = this.b;
    if (exception != null && !TextUtils.isEmpty(exception.b())) {
      str = exception.b();
    } else {
      str = "";
    } 
    kxl1.a(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kzc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */