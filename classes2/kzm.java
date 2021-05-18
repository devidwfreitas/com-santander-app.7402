import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;

class kzm implements gkw<is> {
  kzm(kzl paramkzl, kxl paramkxl1, kxl paramkxl2) {}
  
  public void a(is paramis) {
    String str;
    if (paramis != null && paramis.a().intValue() == 200)
      try {
        JSONArray jSONArray = paramis.c().getJSONArray("data");
        kvr kvr = (new ArrayList<kvr>(Arrays.asList(mys.a().<kvr[]>a(jSONArray.toString(), (Class)kvr[].class)))).get(0);
        this.a.a(kvr);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kzm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */