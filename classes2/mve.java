import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public class mve implements mvd {
  @Nullable
  private mtd a;
  
  private msc b;
  
  public mve(@NonNull mtd parammtd) {
    this.a = parammtd;
    this.b = mse.l();
  }
  
  public void a() {
    if (this.a == null)
      return; 
    mrp mrp = this.b.a();
    this.a.a(mrp);
  }
  
  public void b() {
    this.a = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mve.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */