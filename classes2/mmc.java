import org.json.JSONException;

class mmc implements gkw {
  mmc(mlw parammlw, mkw parammkw, int paramInt) {}
  
  public void a(Object paramObject) {
    is is = (is)paramObject;
    if (is.c() == null) {
      mlw.a(this.c).a(is.b());
      return;
    } 
    if (is.a().intValue() != 200)
      try {
        hav.a(mlw.b(this.c), new gkt(is.c().getString("action"), is.c().getString("code"), is.c().getString("message")));
        return;
      } catch (JSONException jSONException) {
        return;
      }  
    paramObject = new mls();
    try {
      paramObject.b(is.c().getString("fullName"));
    } catch (JSONException jSONException) {
      paramObject.b("");
    } 
    mlw.c(this.c).c(new mmd(this, (mls)paramObject), mlw.a(this.c, this.a, this.b));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mmc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */