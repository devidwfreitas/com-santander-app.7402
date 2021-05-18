import android.os.Handler;
import android.os.Looper;

public class mgz extends nfg {
  private final Handler b = new Handler(Looper.getMainLooper());
  
  public void a(Object paramObject) {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      super.a(paramObject);
      return;
    } 
    this.b.post(new mha(this, paramObject));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mgz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */