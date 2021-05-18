import android.os.DeadObjectException;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Status;

abstract class dtb extends dta {
  protected final egw<Void> b;
  
  public dtb(int paramInt, egw<Void> paramegw) {
    super(paramInt);
    this.b = paramegw;
  }
  
  public void a(@NonNull Status paramStatus) {
    this.b.b((Exception)new cql(paramStatus));
  }
  
  public void a(@NonNull dbi paramdbi, boolean paramBoolean) {}
  
  public final void a(dcs<?> paramdcs) {
    try {
      b(paramdcs);
      return;
    } catch (DeadObjectException deadObjectException) {
      a(dta.a((RemoteException)deadObjectException));
      throw deadObjectException;
    } catch (RemoteException remoteException) {
      a(dta.a(remoteException));
      return;
    } 
  }
  
  protected abstract void b(dcs<?> paramdcs);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dtb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */