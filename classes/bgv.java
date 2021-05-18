import org.json.JSONObject;

class bgv implements bim {
  bgv(bgs parambgs, bgx parambgx) {}
  
  public void a(bix parambix) {
    JSONObject jSONObject = parambix.b();
    if (jSONObject == null)
      return; 
    this.a.a = jSONObject.optString("access_token");
    this.a.b = jSONObject.optInt("expires_at");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bgv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */