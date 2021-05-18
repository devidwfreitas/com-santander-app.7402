import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;

public abstract class cua {
  private static final Object a = new Object();
  
  private static cua b;
  
  public static cua a(Context paramContext) {
    synchronized (a) {
      if (b == null)
        b = new cuc(paramContext.getApplicationContext()); 
      return b;
    } 
  }
  
  public boolean a(ComponentName paramComponentName, ServiceConnection paramServiceConnection, String paramString) {
    return a(new cub(paramComponentName), paramServiceConnection, paramString);
  }
  
  protected abstract boolean a(cub paramcub, ServiceConnection paramServiceConnection, String paramString);
  
  public boolean a(String paramString1, String paramString2, ServiceConnection paramServiceConnection, String paramString3) {
    return a(new cub(paramString1, paramString2), paramServiceConnection, paramString3);
  }
  
  public void b(ComponentName paramComponentName, ServiceConnection paramServiceConnection, String paramString) {
    b(new cub(paramComponentName), paramServiceConnection, paramString);
  }
  
  protected abstract void b(cub paramcub, ServiceConnection paramServiceConnection, String paramString);
  
  public void b(String paramString1, String paramString2, ServiceConnection paramServiceConnection, String paramString3) {
    b(new cub(paramString1, paramString2), paramServiceConnection, paramString3);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cua.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */