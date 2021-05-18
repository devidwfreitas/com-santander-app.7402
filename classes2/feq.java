import android.graphics.Rect;
import java.util.List;

public class feq {
  private static final String a = feq.class.getSimpleName();
  
  private fdu b;
  
  private int c;
  
  private boolean d = false;
  
  private few e = new fer();
  
  public feq(int paramInt) {
    this.c = paramInt;
  }
  
  public feq(int paramInt, fdu paramfdu) {
    this.c = paramInt;
    this.b = paramfdu;
  }
  
  public int a() {
    return this.c;
  }
  
  public Rect a(fdu paramfdu) {
    return this.e.b(paramfdu, this.b);
  }
  
  public fdu a(List<fdu> paramList, boolean paramBoolean) {
    fdu fdu1 = a(paramBoolean);
    return this.e.a(paramList, fdu1);
  }
  
  public fdu a(boolean paramBoolean) {
    return (this.b == null) ? null : (paramBoolean ? this.b.a() : this.b);
  }
  
  public void a(few paramfew) {
    this.e = paramfew;
  }
  
  public fdu b() {
    return this.b;
  }
  
  public few c() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\feq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */