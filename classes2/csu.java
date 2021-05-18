import android.os.IBinder;
import android.os.IInterface;

public class csu<T extends IInterface> extends ctv<T> {
  private final cpj<T> e;
  
  protected T a(IBinder paramIBinder) {
    return (T)this.e.a(paramIBinder);
  }
  
  protected String i() {
    return this.e.a();
  }
  
  protected String j() {
    return this.e.b();
  }
  
  public cpj<T> k() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\csu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */