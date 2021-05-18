import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.support.v4.app.Fragment;

public final class cor extends cwv {
  public static final String a = "GooglePlayServicesErrorDialog";
  
  @Deprecated
  public static final int b = cwv.e;
  
  @Deprecated
  public static final String c = "com.google.android.gms";
  
  public static final String d = "com.android.vending";
  
  @Deprecated
  public static int a(Context paramContext) {
    return cwv.e(paramContext);
  }
  
  @Deprecated
  public static Dialog a(int paramInt1, Activity paramActivity, int paramInt2) {
    return a(paramInt1, paramActivity, paramInt2, null);
  }
  
  @Deprecated
  public static Dialog a(int paramInt1, Activity paramActivity, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener) {
    int i = paramInt1;
    if (a((Context)paramActivity, paramInt1))
      i = 18; 
    return con.a().a(paramActivity, i, paramInt2, paramOnCancelListener);
  }
  
  @Deprecated
  public static PendingIntent a(int paramInt1, Context paramContext, int paramInt2) {
    return cwv.b(paramInt1, paramContext, paramInt2);
  }
  
  @Deprecated
  public static String a(int paramInt) {
    return cwv.c(paramInt);
  }
  
  @Deprecated
  public static void a(int paramInt, Context paramContext) {
    con con = con.a();
    if (a(paramContext, paramInt) || b(paramContext, paramInt)) {
      con.d(paramContext);
      return;
    } 
    con.a(paramContext, paramInt);
  }
  
  public static boolean a(int paramInt1, Activity paramActivity, Fragment paramFragment, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener) {
    int i = paramInt1;
    if (a((Context)paramActivity, paramInt1))
      i = 18; 
    con con = con.a();
    if (paramFragment == null)
      return con.b(paramActivity, i, paramInt2, paramOnCancelListener); 
    Dialog dialog = con.a((Context)paramActivity, i, ctq.a(paramFragment, con.a().b((Context)paramActivity, i, "d"), paramInt2), paramOnCancelListener);
    if (dialog == null)
      return false; 
    con.a(paramActivity, dialog, "GooglePlayServicesErrorDialog", paramOnCancelListener);
    return true;
  }
  
  @Deprecated
  public static boolean a(Context paramContext, int paramInt) {
    return cwv.d(paramContext, paramInt);
  }
  
  @Deprecated
  public static String b(Context paramContext) {
    return cwv.j(paramContext);
  }
  
  @Deprecated
  public static boolean b(int paramInt) {
    return cwv.d(paramInt);
  }
  
  @Deprecated
  public static boolean b(int paramInt1, Activity paramActivity, int paramInt2) {
    return b(paramInt1, paramActivity, paramInt2, null);
  }
  
  @Deprecated
  public static boolean b(int paramInt1, Activity paramActivity, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener) {
    return a(paramInt1, paramActivity, null, paramInt2, paramOnCancelListener);
  }
  
  @Deprecated
  public static boolean b(Context paramContext, int paramInt) {
    return cwv.e(paramContext, paramInt);
  }
  
  public static Resources c(Context paramContext) {
    return cwv.k(paramContext);
  }
  
  public static Context d(Context paramContext) {
    return cwv.l(paramContext);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */