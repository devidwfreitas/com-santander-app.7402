import android.text.TextUtils;

public class kny {
  @eks(a = "prize")
  private String a;
  
  @eks(a = "name")
  private String b;
  
  public kny() {}
  
  public kny(String paramString1, String paramString2) {
    this.a = paramString2;
    this.b = paramString1;
  }
  
  public String a() {
    return TextUtils.isEmpty(this.a) ? "0" : this.a.trim();
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kny.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */