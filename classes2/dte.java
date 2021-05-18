import android.os.DeadObjectException;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Status;

public final class dte<TResult> extends dta {
  private final deh<cpe, TResult> b;
  
  private final egw<TResult> c;
  
  private final ded d;
  
  public dte(int paramInt, deh<cpe, TResult> paramdeh, egw<TResult> paramegw, ded paramded) {
    super(paramInt);
    this.c = paramegw;
    this.b = paramdeh;
    this.d = paramded;
  }
  
  public void a(@NonNull Status paramStatus) {
    this.c.b(this.d.a(paramStatus));
  }
  
  public void a(@NonNull dbi paramdbi, boolean paramBoolean) {
    paramdbi.a(this.c, paramBoolean);
  }
  
  public void a(dcs<?> paramdcs) {
    try {
      this.b.a(paramdcs.b(), this.c);
      return;
    } catch (DeadObjectException deadObjectException) {
      throw deadObjectException;
    } catch (RemoteException remoteException) {
      a(dta.a(remoteException));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dte.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */