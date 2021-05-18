import org.json.JSONObject;

public class iq {
  protected String a = null;
  
  protected im b = im.GET;
  
  protected JSONObject c = new JSONObject();
  
  protected Object d;
  
  protected Integer e = Integer.valueOf(60000);
  
  private Boolean f = Boolean.valueOf(false);
  
  public void a() {
    if (this.a == null)
      throw new ia(Integer.valueOf(-1), "endPoint is required"); 
  }
  
  public void a(im paramim) {
    this.b = paramim;
  }
  
  public void a(Boolean paramBoolean) {
    this.f = paramBoolean;
  }
  
  public void a(Integer paramInteger) {
    this.e = paramInteger;
  }
  
  public void a(Object paramObject) {
    this.d = paramObject;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(JSONObject paramJSONObject) {
    this.c = paramJSONObject;
  }
  
  public String b() {
    return this.a;
  }
  
  public im c() {
    return this.b;
  }
  
  public JSONObject d() {
    return this.c;
  }
  
  public Object e() {
    return this.d;
  }
  
  public Integer f() {
    return this.e;
  }
  
  public Boolean g() {
    return this.f;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */