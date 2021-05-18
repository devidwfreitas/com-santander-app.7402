import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;

public class csf extends cuh {
  int a;
  
  public static Account a(cug paramcug) {
    Account account = null;
    if (paramcug != null) {
      long l = Binder.clearCallingIdentity();
      try {
        account = paramcug.a();
        return account;
      } catch (RemoteException remoteException) {
        Log.w("AccountAccessor", "Remote account accessor probably died");
        return null;
      } finally {
        Binder.restoreCallingIdentity(l);
      } 
    } 
    return account;
  }
  
  public Account a() {
    int i = Binder.getCallingUid();
    if (i == this.a)
      return null; 
    if (cwv.c(null, i)) {
      this.a = i;
      return null;
    } 
    throw new SecurityException("Caller is not GooglePlayServices");
  }
  
  public boolean equals(Object paramObject) {
    if (this == paramObject)
      return true; 
    if (!(paramObject instanceof csf))
      return false; 
    throw new NullPointerException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\csf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */