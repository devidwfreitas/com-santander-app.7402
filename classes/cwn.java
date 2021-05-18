import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.support.annotation.Nullable;
import android.text.TextUtils;

public class cwn {
  private static final cwn a;
  
  public static final int c = cwv.e;
  
  public static final String d = "com.google.android.gms";
  
  static {
    a = new cwn();
  }
  
  public static cwn b() {
    return a;
  }
  
  static String b(@Nullable Context paramContext, @Nullable String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("gcore_");
    stringBuilder.append(c);
    stringBuilder.append("-");
    if (!TextUtils.isEmpty(paramString))
      stringBuilder.append(paramString); 
    stringBuilder.append("-");
    if (paramContext != null)
      stringBuilder.append(paramContext.getPackageName()); 
    stringBuilder.append("-");
    if (paramContext != null)
      try {
        stringBuilder.append((dgl.b(paramContext).b(paramContext.getPackageName(), 0)).versionCode);
      } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {} 
    return stringBuilder.toString();
  }
  
  public int a(Context paramContext) {
    int j = cwv.e(paramContext);
    int i = j;
    if (cwv.d(paramContext, j))
      i = 18; 
    return i;
  }
  
  @Nullable
  public PendingIntent a(Context paramContext, int paramInt1, int paramInt2) {
    return a(paramContext, paramInt1, paramInt2, null);
  }
  
  @Nullable
  public PendingIntent a(Context paramContext, int paramInt1, int paramInt2, @Nullable String paramString) {
    Intent intent = b(paramContext, paramInt1, paramString);
    return (intent == null) ? null : PendingIntent.getActivity(paramContext, paramInt2, intent, 268435456);
  }
  
  public boolean a(int paramInt) {
    return cwv.d(paramInt);
  }
  
  public boolean a(Context paramContext, String paramString) {
    return cwv.a(paramContext, paramString);
  }
  
  @Deprecated
  @Nullable
  public Intent b(int paramInt) {
    return b(null, paramInt, null);
  }
  
  @Nullable
  public Intent b(Context paramContext, int paramInt, @Nullable String paramString) {
    switch (paramInt) {
      default:
        return null;
      case 1:
      case 2:
        return (paramContext != null && cvt.b(paramContext)) ? cue.a() : cue.a("com.google.android.gms", b(paramContext, paramString));
      case 3:
        break;
    } 
    return cue.a("com.google.android.gms");
  }
  
  @Nullable
  public String b(Context paramContext) {
    return cwv.j(paramContext);
  }
  
  public boolean b(Context paramContext, int paramInt) {
    return cwv.d(paramContext, paramInt);
  }
  
  public int c(Context paramContext) {
    return cwv.m(paramContext);
  }
  
  public String c(int paramInt) {
    return cwv.c(paramInt);
  }
  
  public void e(Context paramContext) {
    cwv.f(paramContext);
  }
  
  public void f(Context paramContext) {
    cwv.i(paramContext);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cwn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */