import android.text.TextUtils;

public class kol {
  @eks(a = "availabilities")
  private String a;
  
  @eks(a = "remainingServices")
  private String b;
  
  public kol(String paramString1, String paramString2) {
    this.a = paramString1;
    this.b = paramString2;
  }
  
  public int a() {
    return !TextUtils.isEmpty(this.a) ? Integer.valueOf(this.a).intValue() : 0;
  }
  
  public int b() {
    return !TextUtils.isEmpty(this.b) ? Integer.valueOf(this.b).intValue() : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kol.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */