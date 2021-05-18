import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.Build;
import android.view.SurfaceHolder;

public class fen {
  private SurfaceHolder a;
  
  private SurfaceTexture b;
  
  public fen(SurfaceTexture paramSurfaceTexture) {
    if (paramSurfaceTexture == null)
      throw new IllegalArgumentException("surfaceTexture may not be null"); 
    this.b = paramSurfaceTexture;
  }
  
  public fen(SurfaceHolder paramSurfaceHolder) {
    if (paramSurfaceHolder == null)
      throw new IllegalArgumentException("surfaceHolder may not be null"); 
    this.a = paramSurfaceHolder;
  }
  
  public SurfaceHolder a() {
    return this.a;
  }
  
  public void a(Camera paramCamera) {
    if (this.a != null) {
      paramCamera.setPreviewDisplay(this.a);
      return;
    } 
    if (Build.VERSION.SDK_INT >= 11) {
      paramCamera.setPreviewTexture(this.b);
      return;
    } 
    throw new IllegalStateException("SurfaceTexture not supported.");
  }
  
  public SurfaceTexture b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fen.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */