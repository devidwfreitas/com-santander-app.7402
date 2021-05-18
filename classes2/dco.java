import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

final class dco extends Handler {
  dco(dcm paramdcm, Looper paramLooper) {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage) {
    int i;
    switch (paramMessage.what) {
      default:
        i = paramMessage.what;
        Log.w("GACStateManager", (new StringBuilder(31)).append("Unknown message id: ").append(i).toString());
        return;
      case 1:
        ((dcn)paramMessage.obj).a(this.a);
        return;
      case 2:
        break;
    } 
    throw (RuntimeException)paramMessage.obj;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dco.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */