import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Binder;
import android.os.Process;

public class dgk {
  protected final Context a;
  
  public dgk(Context paramContext) {
    this.a = paramContext;
  }
  
  public int a(String paramString) {
    return this.a.checkCallingOrSelfPermission(paramString);
  }
  
  public int a(String paramString1, String paramString2) {
    return this.a.getPackageManager().checkPermission(paramString1, paramString2);
  }
  
  public ApplicationInfo a(String paramString, int paramInt) {
    return this.a.getPackageManager().getApplicationInfo(paramString, paramInt);
  }
  
  public boolean a() {
    return (Binder.getCallingUid() == Process.myUid()) ? dgj.a(this.a) : false;
  }
  
  @TargetApi(19)
  public boolean a(int paramInt, String paramString) {
    boolean bool2 = false;
    if (cwd.h())
      try {
        ((AppOpsManager)this.a.getSystemService("appops")).checkPackage(paramInt, paramString);
        return true;
      } catch (SecurityException securityException) {
        return false;
      }  
    String[] arrayOfString = this.a.getPackageManager().getPackagesForUid(paramInt);
    boolean bool1 = bool2;
    if (securityException != null) {
      bool1 = bool2;
      if (arrayOfString != null) {
        paramInt = 0;
        while (true) {
          bool1 = bool2;
          if (paramInt < arrayOfString.length) {
            if (securityException.equals(arrayOfString[paramInt]))
              return true; 
            paramInt++;
            continue;
          } 
          return bool1;
        } 
      } 
    } 
    return bool1;
  }
  
  public String[] a(int paramInt) {
    return this.a.getPackageManager().getPackagesForUid(paramInt);
  }
  
  public PackageInfo b(String paramString, int paramInt) {
    return this.a.getPackageManager().getPackageInfo(paramString, paramInt);
  }
  
  public CharSequence b(String paramString) {
    return this.a.getPackageManager().getApplicationLabel(this.a.getPackageManager().getApplicationInfo(paramString, 0));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */