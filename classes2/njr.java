import org.json.JSONObject;

public class njr {
  public static final int a = 400;
  
  public static final int b = 200;
  
  private final String c;
  
  private final String d;
  
  private final JSONObject e;
  
  private int f;
  
  private String g;
  
  private boolean h;
  
  public njr(String paramString1, String paramString2, JSONObject paramJSONObject) {
    if (paramString1 == null)
      throw new IllegalArgumentException("mCommandId must not be null."); 
    this.c = paramString1;
    this.d = paramString2;
    JSONObject jSONObject = paramJSONObject;
    if (paramJSONObject == null)
      jSONObject = new JSONObject(); 
    this.e = jSONObject;
    this.f = 200;
    this.g = null;
    this.h = false;
  }
  
  public final String a() {
    return this.c;
  }
  
  public final njr a(int paramInt) {
    if (this.h)
      throw new IllegalStateException("Response already sent."); 
    this.f = paramInt;
    return this;
  }
  
  public final njr a(String paramString) {
    if (this.h)
      throw new IllegalStateException("Response already sent."); 
    this.g = paramString;
    return this;
  }
  
  public final String b() {
    return this.d;
  }
  
  public final boolean c() {
    return this.h;
  }
  
  public final JSONObject d() {
    return this.e;
  }
  
  public final int e() {
    return this.f;
  }
  
  public final String f() {
    return this.g;
  }
  
  public void g() {
    if (this.h)
      throw new IllegalStateException("Response already sent."); 
    this.h = true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\njr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */