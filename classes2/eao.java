import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;

public class eao {
  private static Context a;
  
  private static eas b;
  
  public static eas a(Context paramContext) {
    csp.a(paramContext);
    if (b != null)
      return b; 
    b(paramContext);
    b = c(paramContext);
    try {
      b.a(cxo.a(d(paramContext).getResources()), cor.b);
      return b;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  private static <T> T a(Class<?> paramClass) {
    String str;
    try {
      return (T)paramClass.newInstance();
    } catch (InstantiationException instantiationException) {
      str = String.valueOf(paramClass.getName());
      if (str.length() != 0) {
        str = "Unable to instantiate the dynamic class ".concat(str);
        throw new IllegalStateException(str);
      } 
      str = new String("Unable to instantiate the dynamic class ");
      throw new IllegalStateException(str);
    } catch (IllegalAccessException illegalAccessException) {
      str = String.valueOf(str.getName());
      if (str.length() != 0) {
        str = "Unable to call the default constructor of ".concat(str);
        throw new IllegalStateException(str);
      } 
    } 
    throw new IllegalStateException(str);
  }
  
  private static <T> T a(ClassLoader paramClassLoader, String paramString) {
    String str;
    try {
      return (T)a(((ClassLoader)csp.<ClassLoader>a(paramClassLoader)).loadClass(paramString));
    } catch (ClassNotFoundException classNotFoundException) {
      str = String.valueOf(paramString);
      if (str.length() != 0) {
        str = "Unable to find dynamic class ".concat(str);
        throw new IllegalStateException(str);
      } 
    } 
    throw new IllegalStateException(str);
  }
  
  private static void b(Context paramContext) {
    int i = cor.a(paramContext);
    switch (i) {
      default:
        throw new cop(i);
      case 0:
        break;
    } 
  }
  
  private static eas c(Context paramContext) {
    Log.i(eao.class.getSimpleName(), "Making Creator dynamically");
    return eat.a(a(d(paramContext).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl"));
  }
  
  private static Context d(Context paramContext) {
    if (a == null)
      a = cor.d(paramContext); 
    return a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */