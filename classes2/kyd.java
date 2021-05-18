import org.json.JSONObject;

class kyd implements gkw<is> {
  kyd(kyb paramkyb, kxl paramkxl1, kxl paramkxl2) {}
  
  public void a(is paramis) {
    String str;
    if (paramis != null && paramis.a().intValue() == 200)
      try {
        JSONObject jSONObject = paramis.c().getJSONObject("message");
        kwd kwd = (new ejm()).<kwd>a(jSONObject.toString(), kwd.class);
        this.a.a(kwd);
        return;
      } catch (Exception exception) {
        exception.printStackTrace();
        this.b.a("");
        return;
      }  
    kxl<String> kxl1 = this.b;
    if (exception != null && exception.b() != null) {
      str = exception.b();
    } else {
      str = "";
    } 
    kxl1.a(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kyd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */