import android.graphics.SurfaceTexture;
import android.view.TextureView;
import com.journeyapps.barcodescanner.CameraPreview;

public class fct implements TextureView.SurfaceTextureListener {
  public fct(CameraPreview paramCameraPreview) {}
  
  public void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2) {
    onSurfaceTextureSizeChanged(paramSurfaceTexture, paramInt1, paramInt2);
  }
  
  public boolean onSurfaceTextureDestroyed(SurfaceTexture paramSurfaceTexture) {
    return false;
  }
  
  public void onSurfaceTextureSizeChanged(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2) {
    CameraPreview.a(this.a, new fdu(paramInt1, paramInt2));
    CameraPreview.a(this.a);
  }
  
  public void onSurfaceTextureUpdated(SurfaceTexture paramSurfaceTexture) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */