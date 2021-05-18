import android.graphics.Bitmap;

public class jnd {
  @eks(a = "id")
  protected String a;
  
  @eks(a = "icon")
  protected String b;
  
  @eks(a = "text")
  protected String c;
  
  transient Bitmap d;
  
  public String a() {
    return this.a;
  }
  
  public Bitmap b() {
    if (this.d == null)
      this.d = jou.a(this.b); 
    return this.d;
  }
  
  public String c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jnd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */