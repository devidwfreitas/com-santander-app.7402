import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;

class kxo implements gkw<is> {
  kxo(kxn paramkxn, kxl paramkxl1, kxl paramkxl2) {}
  
  public void a(is paramis) {
    ArrayList arrayList;
    String str;
    if (paramis == null) {
      this.a.a("");
      return;
    } 
    if (paramis.a() != null && paramis.a().intValue() == 200) {
      try {
        if (paramis.c().isNull("subservices")) {
          this.b.a(new ArrayList());
          return;
        } 
      } catch (Exception exception) {
        exception.printStackTrace();
        this.a.a("");
        return;
      } 
      JSONArray jSONArray1 = exception.c().getJSONArray("subservices");
      JSONArray jSONArray2 = new JSONArray();
      for (int i = 0; i < jSONArray1.length(); i++)
        jSONArray2.put(jSONArray1.getJSONObject(i).getJSONObject("subservice")); 
      if (jSONArray2.length() > 0) {
        arrayList = new ArrayList(Arrays.asList((Object[])mys.a().<kps[]>a(jSONArray2.toString(), (Class)kps[].class)));
      } else {
        arrayList = new ArrayList();
      } 
      this.b.a(arrayList);
      return;
    } 
    kxl<String> kxl1 = this.a;
    if (!TextUtils.isEmpty(arrayList.b())) {
      str = arrayList.b();
    } else {
      str = "";
    } 
    kxl1.a(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kxo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */