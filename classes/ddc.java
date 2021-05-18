import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.common.api.Status;

@Deprecated
public final class ddc {
  private static final Object a = new Object();
  
  private static ddc b;
  
  private final String c;
  
  private final Status d;
  
  private final boolean e;
  
  private final boolean f;
  
  ddc(Context paramContext) {
    Resources resources = paramContext.getResources();
    int i = resources.getIdentifier("google_app_measurement_enable", "integer", resources.getResourcePackageName(cns.common_google_play_services_unknown_issue));
    if (i != 0) {
      if (resources.getInteger(i) != 0) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      if (bool1)
        bool2 = false; 
      this.f = bool2;
    } else {
      this.f = false;
    } 
    this.e = bool1;
    String str2 = cvd.a(paramContext);
    String str1 = str2;
    if (str2 == null)
      str1 = (new csv(paramContext)).a("google_app_id"); 
    if (TextUtils.isEmpty(str1)) {
      this.d = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
      this.c = null;
      return;
    } 
    this.c = str1;
    this.d = Status.a;
  }
  
  public static Status a(Context paramContext) {
    csp.a(paramContext, "Context must not be null.");
    synchronized (a) {
      if (b == null)
        b = new ddc(paramContext); 
      return b.d;
    } 
  }
  
  private static ddc a(String paramString) {
    synchronized (a) {
      if (b == null)
        throw new IllegalStateException((new StringBuilder(String.valueOf(paramString).length() + 34)).append("Initialize must be called before ").append(paramString).append(".").toString()); 
    } 
    ddc ddc1 = b;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_1} */
    return ddc1;
  }
  
  public static String a() {
    return (a("getGoogleAppId")).c;
  }
  
  public static boolean b() {
    return (a("isMeasurementExplicitlyDisabled")).f;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ddc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */