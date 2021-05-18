import android.hardware.Camera;
import android.util.Log;

final class fek implements Camera.PreviewCallback {
  private fev b;
  
  private fdu c;
  
  public fek(fej paramfej) {}
  
  public void a(fdu paramfdu) {
    this.c = paramfdu;
  }
  
  public void a(fev paramfev) {
    this.b = paramfev;
  }
  
  public void onPreviewFrame(byte[] paramArrayOfbyte, Camera paramCamera) {
    fdu fdu1 = this.c;
    fev fev1 = this.b;
    if (fdu1 != null && fev1 != null) {
      int i = paramCamera.getParameters().getPreviewFormat();
      try {
        fev1.a(new fdv(paramArrayOfbyte, fdu1.a, fdu1.b, i, this.a.f()));
        return;
      } catch (IllegalArgumentException illegalArgumentException) {
        Log.e(fej.n(), "Camera preview failed", illegalArgumentException);
        fev1.a(illegalArgumentException);
        return;
      } 
    } 
    Log.d(fej.n(), "Got preview callback, but no handler or resolution available");
    if (fev1 != null) {
      fev1.a(new Exception("No resolution available"));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fek.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */