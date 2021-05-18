import android.content.Context;
import android.os.Bundle;
import android.support.annotation.RequiresPermission;
import java.util.regex.Pattern;

public class cyz {
  private static cyz a;
  
  private static final Pattern c = Pattern.compile("/topics/[a-zA-Z0-9-_.~%]{1,900}");
  
  private czr b;
  
  private cyz(Context paramContext) {
    this.b = czr.c(paramContext);
  }
  
  public static cyz a(Context paramContext) {
    // Byte code:
    //   0: ldc cyz
    //   2: monitorenter
    //   3: getstatic cyz.a : Lcyz;
    //   6: ifnonnull -> 20
    //   9: new cyz
    //   12: dup
    //   13: aload_0
    //   14: invokespecial <init> : (Landroid/content/Context;)V
    //   17: putstatic cyz.a : Lcyz;
    //   20: getstatic cyz.a : Lcyz;
    //   23: astore_0
    //   24: ldc cyz
    //   26: monitorexit
    //   27: aload_0
    //   28: areturn
    //   29: astore_0
    //   30: ldc cyz
    //   32: monitorexit
    //   33: aload_0
    //   34: athrow
    // Exception table:
    //   from	to	target	type
    //   3	20	29	finally
    //   20	24	29	finally
  }
  
  @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
  public void a(String paramString1, String paramString2) {
    Bundle bundle = new Bundle();
    bundle.putString("gcm.topic", paramString2);
    this.b.a(paramString1, paramString2, bundle);
  }
  
  @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
  public void a(String paramString1, String paramString2, Bundle paramBundle) {
    if (paramString1 == null || paramString1.isEmpty()) {
      paramString1 = String.valueOf(paramString1);
      if (paramString1.length() != 0) {
        paramString1 = "Invalid appInstanceToken: ".concat(paramString1);
        throw new IllegalArgumentException(paramString1);
      } 
      paramString1 = new String("Invalid appInstanceToken: ");
      throw new IllegalArgumentException(paramString1);
    } 
    if (paramString2 == null || !c.matcher(paramString2).matches()) {
      paramString1 = String.valueOf(paramString2);
      if (paramString1.length() != 0) {
        paramString1 = "Invalid topic name: ".concat(paramString1);
        throw new IllegalArgumentException(paramString1);
      } 
      paramString1 = new String("Invalid topic name: ");
      throw new IllegalArgumentException(paramString1);
    } 
    Bundle bundle = paramBundle;
    if (paramBundle == null)
      bundle = new Bundle(); 
    bundle.putString("gcm.topic", paramString2);
    this.b.b(paramString1, paramString2, bundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cyz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */