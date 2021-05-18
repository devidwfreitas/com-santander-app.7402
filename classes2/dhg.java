import android.os.RemoteException;

public class dhg extends dhd<Integer> {
  public dhg(int paramInt, String paramString, Integer paramInteger) {
    super(paramInt, paramString, paramInteger, null);
  }
  
  public Integer b(dhl paramdhl) {
    try {
      int i = paramdhl.getIntFlagValue(a(), b().intValue(), d());
      return Integer.valueOf(i);
    } catch (RemoteException remoteException) {
      return b();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dhg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */