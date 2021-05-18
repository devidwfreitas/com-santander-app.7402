import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;

class kyx implements gkw<is> {
  kyx(kyw paramkyw, kxl paramkxl1, kxl paramkxl2) {}
  
  public void a(is paramis) {
    try {
      JSONArray jSONArray = paramis.c().getJSONArray("data");
      List<kny> list = Arrays.asList(mys.a().<kny[]>a(jSONArray.toString(), (Class)kny[].class));
      this.a.a(list);
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      this.b.a("");
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kyx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */