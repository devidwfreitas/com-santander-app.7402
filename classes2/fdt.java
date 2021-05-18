import android.content.Context;
import android.view.OrientationEventListener;
import android.view.WindowManager;

class fdt extends OrientationEventListener {
  fdt(fds paramfds, Context paramContext, int paramInt) {
    super(paramContext, paramInt);
  }
  
  public void onOrientationChanged(int paramInt) {
    WindowManager windowManager = fds.a(this.a);
    fdr fdr = fds.b(this.a);
    if (fds.a(this.a) != null && fdr != null) {
      paramInt = windowManager.getDefaultDisplay().getRotation();
      if (paramInt != fds.c(this.a)) {
        fds.a(this.a, paramInt);
        fdr.a(paramInt);
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fdt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */