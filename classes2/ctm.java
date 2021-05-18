import android.os.Bundle;
import android.support.annotation.BinderThread;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;

public final class ctm extends ctc {
  @BinderThread
  public ctm(ctb paramctb, int paramInt, @Nullable Bundle paramBundle) {
    super(paramctb, paramInt, paramBundle);
  }
  
  protected void a(ConnectionResult paramConnectionResult) {
    this.e.b.a(paramConnectionResult);
    this.e.a(paramConnectionResult);
  }
  
  protected boolean a() {
    this.e.b.a(ConnectionResult.u);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ctm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */