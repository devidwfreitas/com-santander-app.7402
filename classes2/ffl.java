import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.lang.ref.WeakReference;

class ffl extends Handler {
  private WeakReference<ffg> a;
  
  public ffl(ffg paramffg) {
    this.a = new WeakReference<ffg>(paramffg);
  }
  
  public void handleMessage(Message paramMessage) {
    try {
      ffg.a(this.a.get());
      super.handleMessage(paramMessage);
      return;
    } catch (Exception exception) {
      Log.d("LocationRetriever", "release mode, TOH skipping.");
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ffl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */