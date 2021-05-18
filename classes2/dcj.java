import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

final class dcj extends Handler {
  dcj(dce paramdce, Looper paramLooper) {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage) {
    int i;
    switch (paramMessage.what) {
      default:
        i = paramMessage.what;
        Log.w("GoogleApiClientImpl", (new StringBuilder(31)).append("Unknown message id: ").append(i).toString());
        return;
      case 1:
        dce.b(this.a);
        return;
      case 2:
        break;
    } 
    dce.a(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dcj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */