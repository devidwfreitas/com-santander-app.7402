import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.util.Log;
import java.io.IOException;

public final class cmw {
  public static cmx a(Context paramContext) {
    cne.a("Calling this from your main thread can lead to deadlock");
    return a(paramContext, b(paramContext));
  }
  
  static cmx a(Context paramContext, cnc paramcnc) {
    try {
      cnf cnf = cng.a(paramcnc.a());
      cmx cmx = new cmx(cnf.a(), cnf.a(true));
    } catch (RemoteException remoteException) {
      Log.i("AdvertisingIdClient", "GMS remote exception ", (Throwable)remoteException);
      throw new IOException("Remote exception");
    } catch (InterruptedException interruptedException) {
      throw new IOException("Interrupted exception");
    } finally {
      Exception exception = null;
    } 
  }
  
  private static cnc b(Context paramContext) {
    try {
      paramContext.getPackageManager().getPackageInfo("com.android.vending", 0);
      try {
        cna.b(paramContext);
        cnc cnc = new cnc();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (paramContext.bindService(intent, cnc, 1))
          return cnc; 
      } catch (cmy cmy) {
        throw new IOException(cmy);
      } 
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      throw new cmy(9);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cmw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */