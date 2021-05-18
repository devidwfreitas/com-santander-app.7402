import android.app.PendingIntent;
import android.os.Handler;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

final class ctf extends Handler {
  public ctf(ctb paramctb, Looper paramLooper) {
    super(paramLooper);
  }
  
  private void a(Message paramMessage) {
    ((ctg)paramMessage.obj).c();
  }
  
  private boolean b(Message paramMessage) {
    return (paramMessage.what == 2 || paramMessage.what == 1 || paramMessage.what == 5);
  }
  
  public void handleMessage(Message paramMessage) {
    ConnectionResult connectionResult;
    PendingIntent pendingIntent = null;
    if (this.a.c.get() != paramMessage.arg1) {
      if (b(paramMessage))
        a(paramMessage); 
      return;
    } 
    if ((paramMessage.what == 1 || paramMessage.what == 5) && !this.a.c()) {
      a(paramMessage);
      return;
    } 
    if (paramMessage.what == 3) {
      if (paramMessage.obj instanceof PendingIntent)
        pendingIntent = (PendingIntent)paramMessage.obj; 
      connectionResult = new ConnectionResult(paramMessage.arg2, pendingIntent);
      this.a.b.a(connectionResult);
      this.a.a(connectionResult);
      return;
    } 
    if (((Message)connectionResult).what == 4) {
      ctb.a(this.a, 4, (IInterface)null);
      if (ctb.b(this.a) != null)
        ctb.b(this.a).a(((Message)connectionResult).arg2); 
      this.a.a(((Message)connectionResult).arg2);
      ctb.a(this.a, 4, 1, (IInterface)null);
      return;
    } 
    if (((Message)connectionResult).what == 2 && !this.a.b()) {
      a((Message)connectionResult);
      return;
    } 
    if (b((Message)connectionResult)) {
      ((ctg)((Message)connectionResult).obj).b();
      return;
    } 
    int i = ((Message)connectionResult).what;
    Log.wtf("GmsClient", (new StringBuilder(45)).append("Don't know how to handle message: ").append(i).toString(), new Exception());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ctf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */