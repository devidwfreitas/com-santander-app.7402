import org.json.JSONObject;

class bvz implements bim {
  bvz(bvy parambvy, bhl parambhl) {}
  
  public void a(bix parambix) {
    String str;
    JSONObject jSONObject = parambix.b();
    if (jSONObject == null) {
      jSONObject = null;
    } else {
      str = jSONObject.optString("id");
    } 
    bze.a(this.a, str, parambix);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bvz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */