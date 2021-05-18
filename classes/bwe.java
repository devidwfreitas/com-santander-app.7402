import java.util.ArrayList;
import org.json.JSONObject;

class bwe implements bim {
  bwe(bvy parambvy, ArrayList paramArrayList1, ArrayList paramArrayList2, bpw parambpw, bhl parambhl) {}
  
  public void a(bix parambix) {
    JSONObject jSONObject = parambix.b();
    if (jSONObject != null)
      this.a.add(jSONObject); 
    if (parambix.a() != null)
      this.b.add(parambix); 
    this.c.a = (T)Integer.valueOf(((Integer)this.c.a).intValue() - 1);
    if (((Integer)this.c.a).intValue() == 0) {
      if (!this.b.isEmpty()) {
        bze.a(this.d, (String)null, this.b.get(0));
        return;
      } 
    } else {
      return;
    } 
    if (!this.a.isEmpty()) {
      String str = ((JSONObject)this.a.get(0)).optString("id");
      bze.a(this.d, str, parambix);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bwe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */