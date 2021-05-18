import android.content.Context;
import android.util.Log;
import java.lang.reflect.Method;

public class egn {
  public static final String a = "GmsCore_OpenSSL";
  
  private static final cwn b = cwn.b();
  
  private static final Object c = new Object();
  
  private static Method d = null;
  
  public static void a(Context paramContext) {
    csp.a(paramContext, "Context must not be null");
    b.e(paramContext);
    paramContext = cwv.l(paramContext);
    if (paramContext == null) {
      Log.e("ProviderInstaller", "Failed to get remote context");
      throw new cop(8);
    } 
    synchronized (c) {
      if (d == null)
        b(paramContext); 
      d.invoke(null, new Object[] { paramContext });
      return;
    } 
    String str = new String("Failed to install provider: ");
    Log.e("ProviderInstaller", str);
    throw new cop(8);
  }
  
  public static void a(Context paramContext, egp paramegp) {
    csp.a(paramContext, "Context must not be null");
    csp.a(paramegp, "Listener must not be null");
    csp.b("Must be called on the UI thread");
    (new ego(paramContext, paramegp)).execute((Object[])new Void[0]);
  }
  
  private static void b(Context paramContext) {
    d = paramContext.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", new Class[] { Context.class });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\egn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */