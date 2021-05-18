import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;

class kzg implements gkw<is> {
  kzg(kzf paramkzf, kxl paramkxl1, kxl paramkxl2) {}
  
  public void a(is paramis) {
    ArrayList arrayList;
    String str;
    if (paramis == null) {
      this.a.a("");
      return;
    } 
    if (paramis.a() != null && paramis.a().intValue() == 200) {
      try {
        if (paramis.c().isNull("data")) {
          this.b.a(new ArrayList());
          return;
        } 
      } catch (Exception exception) {
        exception.printStackTrace();
        this.a.a("");
        return;
      } 
      JSONArray jSONArray = exception.c().getJSONArray("data");
      if (jSONArray != null) {
        arrayList = new ArrayList(Arrays.asList((Object[])mys.a().<ktt[]>a(jSONArray.toString(), (Class)ktt[].class)));
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kzg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */