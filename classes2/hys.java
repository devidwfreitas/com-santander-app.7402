import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.support.annotation.NonNull;
import android.support.annotation.StringRes;
import android.support.v7.app.AlertDialog;

public class hys {
  public static void a(@NonNull Activity paramActivity, @StringRes int paramInt1, String paramString, @StringRes int paramInt2, boolean paramBoolean) {
    AlertDialog alertDialog = (new AlertDialog.Builder((Context)paramActivity)).setTitle(paramInt1).setMessage(paramString).setNegativeButton(paramInt2, null).create();
    alertDialog.setOnShowListener(new hyt(paramActivity));
    if (paramBoolean)
      alertDialog.setOnDismissListener(new hyu(paramActivity)); 
    alertDialog.show();
  }
  
  public static void a(@NonNull Activity paramActivity, @StringRes int paramInt, boolean paramBoolean) {
    a(paramActivity, paramActivity.getString(paramInt), paramBoolean);
  }
  
  public static void a(@NonNull Activity paramActivity, String paramString, @StringRes int paramInt, boolean paramBoolean) {
    a(paramActivity, 2131297207, paramString, paramInt, paramBoolean);
  }
  
  public static void a(@NonNull Activity paramActivity, String paramString, boolean paramBoolean) {
    a(paramActivity, paramString, 17039370, paramBoolean);
  }
  
  public static void a(@NonNull Context paramContext, @StringRes int paramInt1, @StringRes int paramInt2, @StringRes int paramInt3, @StringRes int paramInt4, DialogInterface.OnClickListener paramOnClickListener) {
    a(paramContext, paramContext.getString(paramInt1), paramContext.getString(paramInt2), paramContext.getString(paramInt3), paramContext.getString(paramInt4), paramOnClickListener);
  }
  
  public static void a(@NonNull Context paramContext, @StringRes int paramInt1, @StringRes int paramInt2, @StringRes int paramInt3, DialogInterface.OnClickListener paramOnClickListener) {
    a(paramContext, 2131297207, paramInt1, paramInt2, paramInt3, paramOnClickListener);
  }
  
  public static void a(@NonNull Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, DialogInterface.OnClickListener paramOnClickListener) {
    AlertDialog alertDialog = (new AlertDialog.Builder(paramContext)).setTitle(paramString1).setMessage(paramString2).setPositiveButton(paramString3, paramOnClickListener).setNegativeButton(paramString4, paramOnClickListener).create();
    alertDialog.setOnShowListener(new hyv(paramContext));
    alertDialog.show();
  }
  
  public static void b(@NonNull Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, DialogInterface.OnClickListener paramOnClickListener) {
    AlertDialog alertDialog = (new AlertDialog.Builder(paramContext)).setTitle(paramString1).setMessage(paramString2).setPositiveButton(paramString3, paramOnClickListener).setNeutralButton(paramString4, paramOnClickListener).setCancelable(false).create();
    alertDialog.setOnShowListener(new hyw(paramContext));
    alertDialog.show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hys.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */