import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.Status;

public class dav<R extends cqg> extends Handler {
  public dav() {
    this(Looper.getMainLooper());
  }
  
  public dav(Looper paramLooper) {
    super(paramLooper);
  }
  
  public void a() {
    removeMessages(2);
  }
  
  public void a(cqh<? super R> paramcqh, R paramR) {
    sendMessage(obtainMessage(1, new Pair(paramcqh, paramR)));
  }
  
  public void a(dat<R> paramdat, long paramLong) {
    sendMessageDelayed(obtainMessage(2, paramdat), paramLong);
  }
  
  protected void b(cqh<? super R> paramcqh, R paramR) {
    try {
      paramcqh.b((cqg)paramR);
      return;
    } catch (RuntimeException runtimeException) {
      dat.b((cqg)paramR);
      throw runtimeException;
    } 
  }
  
  public void handleMessage(Message paramMessage) {
    Pair pair;
    int i;
    switch (paramMessage.what) {
      default:
        i = paramMessage.what;
        Log.wtf("BasePendingResult", (new StringBuilder(45)).append("Don't know how to handle message: ").append(i).toString(), new Exception());
        return;
      case 1:
        pair = (Pair)paramMessage.obj;
        b((cqh<? super R>)pair.first, (R)pair.second);
        return;
      case 2:
        break;
    } 
    ((dat)((Message)pair).obj).c(Status.d);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dav.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */