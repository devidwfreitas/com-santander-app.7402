import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import org.json.JSONArray;

class kxr implements gkw<is> {
  kxr(kxn paramkxn, kxl paramkxl1, kxl paramkxl2) {}
  
  public void a(is paramis) {
    ArrayList<?> arrayList;
    String str;
    if (paramis == null) {
      this.a.a("");
      return;
    } 
    if (paramis.a() != null && paramis.a().intValue() == 200) {
      try {
        if (paramis.c().isNull("situations") || paramis.c().getJSONArray("situations").length() == 0) {
          this.b.a(new ArrayList());
          return;
        } 
      } catch (Exception exception) {
        exception.printStackTrace();
        this.a.a("");
        return;
      } 
      JSONArray jSONArray1 = exception.c().getJSONArray("situations");
      JSONArray jSONArray2 = new JSONArray();
      for (int i = 0; i < jSONArray1.length(); i++)
        jSONArray2.put(jSONArray1.getJSONObject(i).getJSONObject("situation")); 
      if (jSONArray2.length() > 0) {
        arrayList = new ArrayList(Arrays.asList((Object[])(new eju()).a("yyyy-MM-dd HH:mm:ss").j().<kpo[]>a(jSONArray2.toString(), (Class)kpo[].class)));
      } else {
        arrayList = new ArrayList();
      } 
      nab nab = nab.a();
      for (kpo kpo : arrayList) {
        kpo.a(nab.c(kpo.c()));
        if (kpo.c().toLowerCase().contains("reagendado"))
          kpo.a(kxn.a(this.c, kpo.c())); 
      } 
      Collections.reverse(arrayList);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kxr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */