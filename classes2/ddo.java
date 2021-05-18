import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class ddo extends Handler {
  public ddo(ddn paramddn, Looper paramLooper) {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage) {
    boolean bool = true;
    if (paramMessage.what != 1)
      bool = false; 
    csp.b(bool);
    this.a.b((ddq)paramMessage.obj);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ddo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */