import android.util.Log;
import android.view.SurfaceHolder;
import com.journeyapps.barcodescanner.CameraPreview;

public class fcu implements SurfaceHolder.Callback {
  public fcu(CameraPreview paramCameraPreview) {}
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3) {
    if (paramSurfaceHolder == null) {
      Log.e(CameraPreview.r(), "*** WARNING *** surfaceChanged() gave us a null surface!");
      return;
    } 
    CameraPreview.a(this.a, new fdu(paramInt2, paramInt3));
    CameraPreview.a(this.a);
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder) {}
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder) {
    CameraPreview.a(this.a, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fcu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */