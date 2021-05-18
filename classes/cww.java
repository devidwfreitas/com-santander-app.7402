import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;

public class cww {
  private static cww a;
  
  private final Context b;
  
  private final dgk c;
  
  private cww(Context paramContext) {
    this.b = paramContext.getApplicationContext();
    this.c = dgl.b(this.b);
  }
  
  public static cww a(Context paramContext) {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic a : (Ljava/lang/Object;)Ljava/lang/Object;
    //   4: pop
    //   5: ldc cww
    //   7: monitorenter
    //   8: getstatic cww.a : Lcww;
    //   11: ifnonnull -> 29
    //   14: aload_0
    //   15: invokestatic a : (Landroid/content/Context;)V
    //   18: new cww
    //   21: dup
    //   22: aload_0
    //   23: invokespecial <init> : (Landroid/content/Context;)V
    //   26: putstatic cww.a : Lcww;
    //   29: ldc cww
    //   31: monitorexit
    //   32: getstatic cww.a : Lcww;
    //   35: areturn
    //   36: astore_0
    //   37: ldc cww
    //   39: monitorexit
    //   40: aload_0
    //   41: athrow
    // Exception table:
    //   from	to	target	type
    //   8	29	36	finally
    //   29	32	36	finally
    //   37	40	36	finally
  }
  
  cwp a(PackageInfo paramPackageInfo, cwp... paramVarArgs) {
    int i = 0;
    if (paramPackageInfo.signatures == null)
      return null; 
    if (paramPackageInfo.signatures.length != 1) {
      Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
      return null;
    } 
    cwq cwq = new cwq(paramPackageInfo.signatures[0].toByteArray());
    while (i < paramVarArgs.length) {
      if (paramVarArgs[i].equals(cwq))
        return paramVarArgs[i]; 
      i++;
    } 
    return null;
  }
  
  public boolean a(int paramInt) {
    String[] arrayOfString = this.c.a(paramInt);
    if (arrayOfString != null && arrayOfString.length != 0) {
      int i = arrayOfString.length;
      paramInt = 0;
      while (true) {
        if (paramInt < i) {
          if (a(arrayOfString[paramInt]))
            return true; 
          paramInt++;
          continue;
        } 
        return false;
      } 
    } 
    return false;
  }
  
  public boolean a(PackageInfo paramPackageInfo) {
    boolean bool = false;
    if (paramPackageInfo != null) {
      if (cwv.h(this.b))
        return b(paramPackageInfo, true); 
      boolean bool1 = b(paramPackageInfo, false);
      bool = bool1;
      if (!bool1) {
        bool = bool1;
        if (b(paramPackageInfo, true)) {
          Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
          return bool1;
        } 
      } 
    } 
    return bool;
  }
  
  public boolean a(PackageInfo paramPackageInfo, boolean paramBoolean) {
    if (paramPackageInfo != null && paramPackageInfo.signatures != null) {
      cwp cwp;
      if (paramBoolean) {
        cwp = a(paramPackageInfo, cws.a);
      } else {
        cwp = a((PackageInfo)cwp, new cwp[] { cws.a[0] });
      } 
      if (cwp != null)
        return true; 
    } 
    return false;
  }
  
  @Deprecated
  public boolean a(PackageManager paramPackageManager, int paramInt) {
    return a(paramInt);
  }
  
  @Deprecated
  public boolean a(PackageManager paramPackageManager, PackageInfo paramPackageInfo) {
    return b(paramPackageInfo);
  }
  
  public boolean a(String paramString) {
    try {
      return a(this.c.b(paramString, 64));
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      return false;
    } 
  }
  
  public boolean b(PackageInfo paramPackageInfo) {
    if (paramPackageInfo != null) {
      if (a(paramPackageInfo, false))
        return true; 
      if (a(paramPackageInfo, true)) {
        if (cwv.h(this.b))
          return true; 
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return false;
      } 
    } 
    return false;
  }
  
  boolean b(PackageInfo paramPackageInfo, boolean paramBoolean) {
    boolean bool1;
    boolean bool2 = false;
    if (paramPackageInfo.signatures.length != 1) {
      Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
      return bool2;
    } 
    cwq cwq = new cwq(paramPackageInfo.signatures[0].toByteArray());
    String str = paramPackageInfo.packageName;
    if (paramBoolean) {
      bool1 = cwo.b(str, (cwp)cwq);
    } else {
      bool1 = cwo.a(str, (cwp)cwq);
    } 
    bool2 = bool1;
    if (!bool1) {
      Log.d("GoogleSignatureVerifier", (new StringBuilder(27)).append("Cert not in list. atk=").append(paramBoolean).toString());
      return bool1;
    } 
    return bool2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cww.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */