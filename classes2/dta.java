import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Status;

public abstract class dta {
  public final int a;
  
  public dta(int paramInt) {
    this.a = paramInt;
  }
  
  private static Status b(RemoteException paramRemoteException) {
    StringBuilder stringBuilder = new StringBuilder();
    if (cwd.d() && paramRemoteException instanceof android.os.TransactionTooLargeException)
      stringBuilder.append("TransactionTooLargeException: "); 
    stringBuilder.append(paramRemoteException.getLocalizedMessage());
    return new Status(8, stringBuilder.toString());
  }
  
  public abstract void a(@NonNull Status paramStatus);
  
  public abstract void a(@NonNull dbi paramdbi, boolean paramBoolean);
  
  public abstract void a(dcs<?> paramdcs);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dta.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */