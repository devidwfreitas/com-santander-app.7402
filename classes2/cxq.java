import android.content.Context;
import android.os.IBinder;

public abstract class cxq<T> {
  private final String a;
  
  private T b;
  
  protected cxq(String paramString) {
    this.a = paramString;
  }
  
  protected final T a(Context paramContext) {
    if (this.b == null) {
      csp.a(paramContext);
      paramContext = cwv.l(paramContext);
      if (paramContext == null)
        throw new cxr("Could not get remote context."); 
      ClassLoader classLoader = paramContext.getClassLoader();
      try {
        this.b = b((IBinder)classLoader.loadClass(this.a).newInstance());
        return this.b;
      } catch (ClassNotFoundException classNotFoundException) {
        throw new cxr("Could not load creator class.", classNotFoundException);
      } catch (InstantiationException instantiationException) {
        throw new cxr("Could not instantiate creator.", instantiationException);
      } catch (IllegalAccessException illegalAccessException) {
        throw new cxr("Could not access creator.", illegalAccessException);
      } 
    } 
    return this.b;
  }
  
  protected abstract T b(IBinder paramIBinder);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cxq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */