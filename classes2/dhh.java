import android.os.RemoteException;

public class dhh extends dhd<Long> {
  public dhh(int paramInt, String paramString, Long paramLong) {
    super(paramInt, paramString, paramLong, null);
  }
  
  public Long b(dhl paramdhl) {
    try {
      long l = paramdhl.getLongFlagValue(a(), b().longValue(), d());
      return Long.valueOf(l);
    } catch (RemoteException remoteException) {
      return b();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dhh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */