import android.graphics.Bitmap;
import android.support.annotation.ColorInt;

public class jne {
  @eks(a = "id")
  protected String a;
  
  @eks(a = "icon")
  protected String b;
  
  @eks(a = "text")
  protected String c;
  
  @eks(a = "textColor")
  protected String d;
  
  @eks(a = "initialDate")
  protected String e;
  
  @eks(a = "finalDate")
  protected String f;
  
  @eks(a = "urlContingency")
  protected String g;
  
  protected Bitmap h;
  
  public String a() {
    return this.a;
  }
  
  public Bitmap b() {
    if (this.h == null)
      this.h = jou.a(this.b); 
    return this.h;
  }
  
  public String c() {
    return this.c;
  }
  
  @ColorInt
  public int d() {
    return jou.a(this.d, -16777216);
  }
  
  public String e() {
    return this.e;
  }
  
  public String f() {
    return this.f;
  }
  
  public String g() {
    return this.g;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jne.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */