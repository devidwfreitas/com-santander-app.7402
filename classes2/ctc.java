import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IInterface;
import android.support.annotation.BinderThread;
import com.google.android.gms.common.ConnectionResult;

abstract class ctc extends ctg<Boolean> {
  public final int a;
  
  public final Bundle b;
  
  @BinderThread
  protected ctc(ctb paramctb, int paramInt, Bundle paramBundle) {
    super(paramctb, Boolean.valueOf(true));
    this.a = paramInt;
    this.b = paramBundle;
  }
  
  protected abstract void a(ConnectionResult paramConnectionResult);
  
  protected void a(Boolean paramBoolean) {
    PendingIntent pendingIntent;
    Boolean bool = null;
    if (paramBoolean == null) {
      ctb.a(this.c, 1, (IInterface)null);
      return;
    } 
    switch (this.a) {
      default:
        ctb.a(this.c, 1, (IInterface)null);
        paramBoolean = bool;
        if (this.b != null)
          pendingIntent = (PendingIntent)this.b.getParcelable("pendingIntent"); 
        a(new ConnectionResult(this.a, pendingIntent));
        return;
      case 0:
        if (!a()) {
          ctb.a(this.c, 1, (IInterface)null);
          a(new ConnectionResult(8, null));
          return;
        } 
        return;
      case 10:
        break;
    } 
    ctb.a(this.c, 1, (IInterface)null);
    throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
  }
  
  protected abstract boolean a();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ctc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */