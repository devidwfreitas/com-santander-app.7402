import org.json.JSONObject;

class kyj implements gkw<is> {
  kyj(kyf paramkyf, kxl paramkxl1, kxl paramkxl2) {}
  
  public void a(is paramis) {
    JSONObject jSONObject;
    String str;
    if (paramis != null && paramis.a().intValue() == 200) {
      jSONObject = paramis.c();
      this.a.a(mys.a().a(jSONObject.toString(), kqj.class));
      return;
    } 
    kxl<String> kxl1 = this.b;
    if (jSONObject != null && jSONObject.b() != null) {
      str = jSONObject.b();
    } else {
      str = "";
    } 
    kxl1.a(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kyj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */