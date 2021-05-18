import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.support.annotation.BinderThread;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

public final class ctl extends ctc {
  public final IBinder e;
  
  @BinderThread
  public ctl(ctb paramctb, int paramInt, IBinder paramIBinder, Bundle paramBundle) {
    super(paramctb, paramInt, paramBundle);
    this.e = paramIBinder;
  }
  
  protected void a(ConnectionResult paramConnectionResult) {
    if (ctb.d(this.f) != null)
      ctb.d(this.f).a(paramConnectionResult); 
    this.f.a(paramConnectionResult);
  }
  
  protected boolean a() {
    try {
      String str = this.e.getInterfaceDescriptor();
      if (!this.f.j().equals(str)) {
        String str1 = String.valueOf(this.f.j());
        Log.e("GmsClient", (new StringBuilder(String.valueOf(str1).length() + 34 + String.valueOf(str).length())).append("service descriptor mismatch: ").append(str1).append(" vs. ").append(str).toString());
        return false;
      } 
    } catch (RemoteException remoteException) {
      Log.w("GmsClient", "service probably died");
      return false;
    } 
    IInterface iInterface = (IInterface)this.f.a(this.e);
    if (iInterface != null && ctb.a(this.f, 2, 3, iInterface)) {
      Bundle bundle = this.f.v();
      if (ctb.b(this.f) != null)
        ctb.b(this.f).a(bundle); 
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ctl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */