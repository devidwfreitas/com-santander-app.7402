import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

@SuppressLint({"HandlerLeak"})
class coo extends Handler {
  private final Context b;
  
  public coo(con paramcon, Context paramContext) {
    super(looper);
    Looper looper;
    this.b = paramContext.getApplicationContext();
  }
  
  public void handleMessage(Message paramMessage) {
    switch (paramMessage.what) {
      default:
        i = paramMessage.what;
        Log.w("GoogleApiAvailability", (new StringBuilder(50)).append("Don't know how to handle this message: ").append(i).toString());
        return;
      case 1:
        break;
    } 
    int i = this.a.a(this.b);
    if (this.a.a(i)) {
      this.a.a(this.b, i);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\coo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */