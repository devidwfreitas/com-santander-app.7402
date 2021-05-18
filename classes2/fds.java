import android.content.Context;
import android.view.OrientationEventListener;
import android.view.WindowManager;

public class fds {
  private int a;
  
  private WindowManager b;
  
  private OrientationEventListener c;
  
  private fdr d;
  
  public void a() {
    if (this.c != null)
      this.c.disable(); 
    this.c = null;
    this.b = null;
    this.d = null;
  }
  
  public void a(Context paramContext, fdr paramfdr) {
    a();
    paramContext = paramContext.getApplicationContext();
    this.d = paramfdr;
    this.b = (WindowManager)paramContext.getSystemService("window");
    this.c = new fdt(this, paramContext, 3);
    this.c.enable();
    this.a = this.b.getDefaultDisplay().getRotation();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fds.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */