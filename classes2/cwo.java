import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;

class cwo {
  private static cuu a;
  
  private static final Object b = new Object();
  
  private static Context c;
  
  static void a(Context paramContext) {
    // Byte code:
    //   0: ldc cwo
    //   2: monitorenter
    //   3: getstatic cwo.c : Landroid/content/Context;
    //   6: ifnonnull -> 24
    //   9: aload_0
    //   10: ifnull -> 20
    //   13: aload_0
    //   14: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   17: putstatic cwo.c : Landroid/content/Context;
    //   20: ldc cwo
    //   22: monitorexit
    //   23: return
    //   24: ldc 'GoogleCertificates'
    //   26: ldc 'GoogleCertificates has been initialized already'
    //   28: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   31: pop
    //   32: goto -> 20
    //   35: astore_0
    //   36: ldc cwo
    //   38: monitorexit
    //   39: aload_0
    //   40: athrow
    // Exception table:
    //   from	to	target	type
    //   3	9	35	finally
    //   13	20	35	finally
    //   24	32	35	finally
  }
  
  private static boolean a() {
    if (a != null)
      return true; 
    csp.a(c);
    synchronized (b) {
      cuu cuu1 = a;
      if (cuu1 == null)
        try {
          DynamiteModule dynamiteModule = DynamiteModule.a(c, DynamiteModule.e, "com.google.android.gms.googlecertificates");
          Log.d("GoogleCertificates", "com.google.android.gms.googlecertificates module is loaded");
          a = cuv.a(dynamiteModule.a("com.google.android.gms.common.GoogleCertificatesImpl"));
          return true;
        } catch (cyb cyb) {
          Log.e("GoogleCertificates", "Failed to load com.google.android.gms.googlecertificates", cyb);
          return false;
        }  
      return true;
    } 
  }
  
  static boolean a(String paramString, cwp paramcwp) {
    if (!a())
      return false; 
    try {
      return a.a(paramString, paramcwp.a());
    } catch (RemoteException remoteException) {
      Log.e("GoogleCertificates", "Failed to get Google certificates from remote", (Throwable)remoteException);
      return false;
    } 
  }
  
  static boolean b(String paramString, cwp paramcwp) {
    if (!a())
      return false; 
    try {
      return a.b(paramString, paramcwp.a());
    } catch (RemoteException remoteException) {
      Log.e("GoogleCertificates", "Failed to get Google certificates from remote", (Throwable)remoteException);
      return false;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cwo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */