import android.os.Handler;
import android.os.Message;
import com.journeyapps.barcodescanner.CameraPreview;

public class fcv implements Handler.Callback {
  public fcv(CameraPreview paramCameraPreview) {}
  
  public boolean handleMessage(Message paramMessage) {
    if (paramMessage.what == erz.zxing_prewiew_size_ready) {
      CameraPreview.b(this.a, (fdu)paramMessage.obj);
      return true;
    } 
    if (paramMessage.what == erz.zxing_camera_error) {
      Exception exception = (Exception)paramMessage.obj;
      if (this.a.n()) {
        this.a.e();
        CameraPreview.b(this.a).a(exception);
      } 
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fcv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */