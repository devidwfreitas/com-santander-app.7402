import android.os.Binder;
import android.os.Handler;
import android.os.Message;
import com.google.android.gms.iid.MessengerCompat;

public final class czw extends czz {
  Handler a;
  
  public czw(MessengerCompat paramMessengerCompat, Handler paramHandler) {
    this.a = paramHandler;
  }
  
  public void a(Message paramMessage) {
    paramMessage.arg2 = Binder.getCallingUid();
    this.a.dispatchMessage(paramMessage);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */