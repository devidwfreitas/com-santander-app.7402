import org.json.JSONException;

class mmf implements gkw {
  mmf(mlw parammlw) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    if (paramObject.c() == null) {
      mlw.a(this.a).a(paramObject.b());
      return;
    } 
    if (paramObject.a().intValue() != 200)
      try {
        hav.a(mlw.b(this.a), new gkt(paramObject.c().getString("action"), paramObject.c().getString("code"), paramObject.c().getString("message")));
        return;
      } catch (JSONException jSONException) {
        return;
      }  
    paramObject = new mls();
    paramObject.a("S");
    paramObject.b("");
    mlw.a(this.a).b((mls)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mmf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */