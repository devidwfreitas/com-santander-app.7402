import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import android.text.TextUtils;
import android.util.Log;

public final class ctp {
  private static final SimpleArrayMap<String, String> a = new SimpleArrayMap();
  
  public static String a(Context paramContext) {
    String str2 = (paramContext.getApplicationInfo()).name;
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str2 = paramContext.getPackageName();
      try {
        return dgl.b(paramContext).b(paramContext.getPackageName()).toString();
      } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
        return str2;
      } 
    } 
    return str1;
  }
  
  @Nullable
  public static String a(Context paramContext, int paramInt) {
    Resources resources = paramContext.getResources();
    switch (paramInt) {
      default:
        Log.e("GoogleApiAvailability", (new StringBuilder(33)).append("Unexpected error code ").append(paramInt).toString());
      case 4:
      case 6:
      case 18:
        return null;
      case 1:
        return resources.getString(cns.common_google_play_services_install_title);
      case 3:
        return resources.getString(cns.common_google_play_services_enable_title);
      case 2:
        return resources.getString(cns.common_google_play_services_update_title);
      case 9:
        Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
        return null;
      case 7:
        Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
        return a(paramContext, "common_google_play_services_network_error_title");
      case 8:
        Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
        return null;
      case 10:
        Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
        return null;
      case 5:
        Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
        return a(paramContext, "common_google_play_services_invalid_account_title");
      case 11:
        Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
        return null;
      case 16:
        Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
        return null;
      case 17:
        Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
        return a(paramContext, "common_google_play_services_sign_in_failed_title");
      case 20:
        break;
    } 
    Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
    return a(paramContext, "common_google_play_services_restricted_profile_title");
  }
  
  @Nullable
  private static String a(Context paramContext, String paramString) {
    int i;
    synchronized (a) {
      String str1 = (String)a.get(paramString);
      if (str1 != null)
        return str1; 
      Resources resources = cor.c(paramContext);
      if (resources == null)
        return null; 
      i = resources.getIdentifier(paramString, "string", "com.google.android.gms");
      if (i == 0) {
        String str2 = String.valueOf(paramString);
        if (str2.length() != 0) {
          str2 = "Missing resource: ".concat(str2);
          Log.w("GoogleApiAvailability", str2);
          return null;
        } 
        str2 = new String("Missing resource: ");
        Log.w("GoogleApiAvailability", str2);
        return null;
      } 
    } 
    String str = paramContext.getString(i);
    if (TextUtils.isEmpty(str)) {
      str = String.valueOf(paramString);
      if (str.length() != 0) {
        str = "Got empty resource: ".concat(str);
        Log.w("GoogleApiAvailability", str);
        /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_3} */
        return null;
      } 
      str = new String("Got empty resource: ");
      Log.w("GoogleApiAvailability", str);
      /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_3} */
      return null;
    } 
    a.put(paramString, str);
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_3} */
    return str;
  }
  
  private static String a(Context paramContext, String paramString1, String paramString2) {
    Resources resources = paramContext.getResources();
    paramString1 = a(paramContext, paramString1);
    String str = paramString1;
    if (paramString1 == null)
      str = resources.getString(cns.common_google_play_services_unknown_issue); 
    return String.format((resources.getConfiguration()).locale, str, new Object[] { paramString2 });
  }
  
  @NonNull
  public static String b(Context paramContext, int paramInt) {
    String str1;
    if (paramInt == 6) {
      str1 = a(paramContext, "common_google_play_services_resolution_required_title");
    } else {
      str1 = a(paramContext, paramInt);
    } 
    String str2 = str1;
    if (str1 == null)
      str2 = paramContext.getResources().getString(cns.common_google_play_services_notification_ticker); 
    return str2;
  }
  
  @NonNull
  public static String c(Context paramContext, int paramInt) {
    Resources resources = paramContext.getResources();
    String str = a(paramContext);
    switch (paramInt) {
      default:
        return resources.getString(cns.common_google_play_services_unknown_issue, new Object[] { str });
      case 1:
        return resources.getString(cns.common_google_play_services_install_text, new Object[] { str });
      case 3:
        return resources.getString(cns.common_google_play_services_enable_text, new Object[] { str });
      case 18:
        return resources.getString(cns.common_google_play_services_updating_text, new Object[] { str });
      case 2:
        return cvt.b(paramContext) ? resources.getString(cns.common_google_play_services_wear_update_text) : resources.getString(cns.common_google_play_services_update_text, new Object[] { str });
      case 9:
        return resources.getString(cns.common_google_play_services_unsupported_text, new Object[] { str });
      case 7:
        return a(paramContext, "common_google_play_services_network_error_text", str);
      case 5:
        return a(paramContext, "common_google_play_services_invalid_account_text", str);
      case 16:
        return a(paramContext, "common_google_play_services_api_unavailable_text", str);
      case 17:
        return a(paramContext, "common_google_play_services_sign_in_failed_text", str);
      case 20:
        break;
    } 
    return a(paramContext, "common_google_play_services_restricted_profile_text", str);
  }
  
  @NonNull
  public static String d(Context paramContext, int paramInt) {
    return (paramInt == 6) ? a(paramContext, "common_google_play_services_resolution_required_text", a(paramContext)) : c(paramContext, paramInt);
  }
  
  @NonNull
  public static String e(Context paramContext, int paramInt) {
    Resources resources = paramContext.getResources();
    switch (paramInt) {
      default:
        return resources.getString(17039370);
      case 1:
        return resources.getString(cns.common_google_play_services_install_button);
      case 3:
        return resources.getString(cns.common_google_play_services_enable_button);
      case 2:
        break;
    } 
    return resources.getString(cns.common_google_play_services_update_button);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ctp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */