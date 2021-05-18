import android.os.RemoteException;

public class dhi extends dhd<String> {
  public dhi(int paramInt, String paramString1, String paramString2) {
    super(paramInt, paramString1, paramString2, null);
  }
  
  public String b(dhl paramdhl) {
    try {
      return paramdhl.getStringFlagValue(a(), b(), d());
    } catch (RemoteException remoteException) {
      return b();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dhi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */