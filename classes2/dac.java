import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class dac extends Handler {
  dac(dab paramdab, Looper paramLooper) {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage) {
    this.a.a(paramMessage);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */