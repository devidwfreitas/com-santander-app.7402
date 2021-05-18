import android.os.Handler;
import android.os.Message;
import com.journeyapps.barcodescanner.BarcodeView;
import java.util.List;

public class fcr implements Handler.Callback {
  public fcr(BarcodeView paramBarcodeView) {}
  
  public boolean handleMessage(Message paramMessage) {
    fcq fcq;
    if (paramMessage.what == erz.zxing_decode_succeeded) {
      fcq = (fcq)paramMessage.obj;
      if (fcq != null && BarcodeView.a(this.a) != null && BarcodeView.b(this.a) != fcs.NONE) {
        BarcodeView.a(this.a).a(fcq);
        if (BarcodeView.b(this.a) == fcs.SINGLE)
          this.a.b(); 
      } 
      return true;
    } 
    if (((Message)fcq).what == erz.zxing_decode_failed)
      return true; 
    if (((Message)fcq).what == erz.zxing_possible_result_points) {
      List<eqo> list = (List)((Message)fcq).obj;
      if (BarcodeView.a(this.a) != null && BarcodeView.b(this.a) != fcs.NONE)
        BarcodeView.a(this.a).a(list); 
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fcr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */