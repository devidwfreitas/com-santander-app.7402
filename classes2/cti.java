import android.os.Bundle;
import android.os.IBinder;
import android.support.annotation.BinderThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;

public final class cti extends cup {
  private ctb a;
  
  private final int b;
  
  public cti(@NonNull ctb paramctb, int paramInt) {
    this.a = paramctb;
    this.b = paramInt;
  }
  
  private void a() {
    this.a = null;
  }
  
  @BinderThread
  public void a(int paramInt, @Nullable Bundle paramBundle) {
    Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
  }
  
  @BinderThread
  public void a(int paramInt, @NonNull IBinder paramIBinder, @Nullable Bundle paramBundle) {
    csp.a(this.a, "onPostInitComplete can be called only once per call to getRemoteService");
    this.a.a(paramInt, paramIBinder, paramBundle, this.b);
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cti.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */