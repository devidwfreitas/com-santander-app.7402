import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;

class kzb implements gkw<is> {
  kzb(kyz paramkyz, kxl paramkxl1, kxl paramkxl2) {}
  
  public void a(is paramis) {
    String str;
    if (paramis != null && paramis.a().intValue() == 200)
      try {
        JSONArray jSONArray = paramis.c().getJSONArray("data");
        if (jSONArray != null) {
          ArrayList arrayList = new ArrayList(Arrays.asList((Object[])mys.a().<kwj[]>a(jSONArray.toString(), (Class)kwj[].class)));
          this.a.a(arrayList);
          return;
        } 
        this.a.a(null);
        return;
      } catch (JSONException jSONException) {
        jSONException.printStackTrace();
        this.b.a("");
        return;
      }  
    kxl<String> kxl1 = this.b;
    if (jSONException != null && !TextUtils.isEmpty(jSONException.b())) {
      str = jSONException.b();
    } else {
      str = "";
    } 
    kxl1.a(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kzb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */