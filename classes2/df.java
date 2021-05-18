import org.json.JSONObject;

class df implements dm {
  df(cz paramcz, bfr parambfr) {}
  
  public void a() {
    if (this.b != null)
      this.b.a(); 
  }
  
  public void a(float paramFloat) {
    if (this.b != null)
      this.b.a(paramFloat); 
  }
  
  public void a(int paramInt, float paramFloat) {
    if (this.b != null)
      this.b.a(paramInt, paramFloat); 
  }
  
  public void a(Exception paramException) {
    if (this.b != null)
      this.b.a(paramException); 
  }
  
  public void a(String paramString) {
    if (this.b != null)
      this.b.a(paramString); 
  }
  
  public void a(String paramString1, String paramString2) {
    try {
      JSONObject jSONObject = new JSONObject(paramString1);
      cz.a(this.a, jSONObject);
    } catch (Exception exception) {}
    try {
      JSONObject jSONObject = new JSONObject(paramString2);
      cz.b(this.a, jSONObject);
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  public void b() {
    if (this.b != null)
      this.b.b(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\df.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */