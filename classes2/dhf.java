import android.os.RemoteException;

public class dhf extends dhd<Boolean> {
  public dhf(int paramInt, String paramString, Boolean paramBoolean) {
    super(paramInt, paramString, paramBoolean, null);
  }
  
  public Boolean b(dhl paramdhl) {
    try {
      boolean bool = paramdhl.getBooleanFlagValue(a(), b().booleanValue(), d());
      return Boolean.valueOf(bool);
    } catch (RemoteException remoteException) {
      return b();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dhf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */