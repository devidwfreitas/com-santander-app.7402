import android.support.annotation.DrawableRes;
import android.support.annotation.StringRes;

public class irz {
  private int a;
  
  private int b;
  
  private int c;
  
  public irz(@StringRes int paramInt1, @StringRes int paramInt2, @DrawableRes int paramInt3) {
    this.c = paramInt1;
    this.b = paramInt2;
    this.a = paramInt3;
  }
  
  public int a() {
    return this.a;
  }
  
  public void a(int paramInt) {
    this.a = paramInt;
  }
  
  public int b() {
    return this.b;
  }
  
  public void b(int paramInt) {
    this.b = paramInt;
  }
  
  public int c() {
    return this.c;
  }
  
  public void c(int paramInt) {
    this.c = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\irz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */