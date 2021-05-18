import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import java.util.List;
import java.util.MissingFormatArgumentException;
import org.json.JSONArray;
import org.json.JSONException;

class czm {
  static czm a;
  
  private final Context b;
  
  private czm(Context paramContext) {
    this.b = paramContext.getApplicationContext();
  }
  
  private int a() {
    return (int)SystemClock.uptimeMillis();
  }
  
  static czm a(Context paramContext) {
    // Byte code:
    //   0: ldc czm
    //   2: monitorenter
    //   3: getstatic czm.a : Lczm;
    //   6: ifnonnull -> 20
    //   9: new czm
    //   12: dup
    //   13: aload_0
    //   14: invokespecial <init> : (Landroid/content/Context;)V
    //   17: putstatic czm.a : Lczm;
    //   20: getstatic czm.a : Lczm;
    //   23: astore_0
    //   24: ldc czm
    //   26: monitorexit
    //   27: aload_0
    //   28: areturn
    //   29: astore_0
    //   30: ldc czm
    //   32: monitorexit
    //   33: aload_0
    //   34: athrow
    // Exception table:
    //   from	to	target	type
    //   3	20	29	finally
    //   20	24	29	finally
  }
  
  static String a(Bundle paramBundle, String paramString) {
    String str2 = paramBundle.getString(paramString);
    String str1 = str2;
    if (str2 == null)
      str1 = paramBundle.getString(paramString.replace("gcm.n.", "gcm.notification.")); 
    return str1;
  }
  
  private String a(String paramString) {
    return paramString.substring("gcm.n.".length());
  }
  
  private void a(String paramString, Notification paramNotification) {
    if (Log.isLoggable("GcmNotification", 3))
      Log.d("GcmNotification", "Showing notification"); 
    NotificationManager notificationManager = (NotificationManager)this.b.getSystemService("notification");
    String str = paramString;
    if (TextUtils.isEmpty(paramString)) {
      long l = SystemClock.uptimeMillis();
      str = (new StringBuilder(37)).append("GCM-Notification:").append(l).toString();
    } 
    notificationManager.notify(str, 0, paramNotification);
  }
  
  static boolean a(Bundle paramBundle) {
    return ("1".equals(a(paramBundle, "gcm.n.e")) || a(paramBundle, "gcm.n.icon") != null);
  }
  
  private int b(String paramString) {
    if (!TextUtils.isEmpty(paramString)) {
      Resources resources = this.b.getResources();
      int k = resources.getIdentifier(paramString, "drawable", this.b.getPackageName());
      if (k != 0)
        return k; 
      int m = resources.getIdentifier(paramString, "mipmap", this.b.getPackageName());
      k = m;
      if (m == 0) {
        Log.w("GcmNotification", (new StringBuilder(String.valueOf(paramString).length() + 57)).append("Icon resource ").append(paramString).append(" not found. Notification will use app icon.").toString());
      } else {
        return k;
      } 
    } 
    int j = (this.b.getApplicationInfo()).icon;
    int i = j;
    return (j == 0) ? 17301651 : i;
  }
  
  private String b(Bundle paramBundle, String paramString) {
    String str1;
    String str2 = a(paramBundle, paramString);
    if (!TextUtils.isEmpty(str2))
      return str2; 
    str2 = String.valueOf(paramString);
    String str3 = String.valueOf("_loc_key");
    if (str3.length() != 0) {
      str2 = str2.concat(str3);
    } else {
      str2 = new String(str2);
    } 
    str3 = a(paramBundle, str2);
    if (TextUtils.isEmpty(str3))
      return null; 
    Resources resources = this.b.getResources();
    int i = resources.getIdentifier(str3, "string", this.b.getPackageName());
    if (i == 0) {
      str1 = String.valueOf(paramString);
      paramString = String.valueOf("_loc_key");
      if (paramString.length() != 0) {
        str1 = str1.concat(paramString);
        str1 = String.valueOf(a(str1));
        Log.w("GcmNotification", (new StringBuilder(String.valueOf(str1).length() + 49 + String.valueOf(str3).length())).append(str1).append(" resource not found: ").append(str3).append(" Default value will be used.").toString());
        return null;
      } 
      str1 = new String(str1);
      str1 = String.valueOf(a(str1));
      Log.w("GcmNotification", (new StringBuilder(String.valueOf(str1).length() + 49 + String.valueOf(str3).length())).append(str1).append(" resource not found: ").append(str3).append(" Default value will be used.").toString());
      return null;
    } 
    str2 = String.valueOf(paramString);
    String str4 = String.valueOf("_loc_args");
    if (str4.length() != 0) {
      str2 = str2.concat(str4);
    } else {
      str2 = new String(str2);
    } 
    str2 = a((Bundle)str1, str2);
    if (TextUtils.isEmpty(str2))
      return resources.getString(i); 
    try {
      JSONArray jSONArray = new JSONArray(str2);
      String[] arrayOfString = new String[jSONArray.length()];
      for (int j = 0; j < arrayOfString.length; j++)
        arrayOfString[j] = (String)jSONArray.opt(j); 
      return resources.getString(i, (Object[])arrayOfString);
    } catch (JSONException jSONException) {
      String str = String.valueOf(paramString);
      paramString = String.valueOf("_loc_args");
      if (paramString.length() != 0) {
        str = str.concat(paramString);
      } else {
        str = new String(str);
      } 
      str = String.valueOf(a(str));
      Log.w("GcmNotification", (new StringBuilder(String.valueOf(str).length() + 41 + String.valueOf(str2).length())).append("Malformed ").append(str).append(": ").append(str2).append("  Default value will be used.").toString());
    } catch (MissingFormatArgumentException missingFormatArgumentException) {
      Log.w("GcmNotification", (new StringBuilder(String.valueOf(str3).length() + 58 + String.valueOf(str2).length())).append("Missing format argument for ").append(str3).append(": ").append(str2).append(" Default value will be used.").toString(), missingFormatArgumentException);
    } 
    return null;
  }
  
  static void b(Bundle paramBundle) {
    Bundle bundle = new Bundle();
    Iterator<String> iterator = paramBundle.keySet().iterator();
    while (iterator.hasNext()) {
      String str2 = iterator.next();
      String str3 = paramBundle.getString(str2);
      String str1 = str2;
      if (str2.startsWith("gcm.notification."))
        str1 = str2.replace("gcm.notification.", "gcm.n."); 
      if (str1.startsWith("gcm.n.")) {
        if (!"gcm.n.e".equals(str1))
          bundle.putString(str1.substring("gcm.n.".length()), str3); 
        iterator.remove();
      } 
    } 
    String str = bundle.getString("sound2");
    if (str != null) {
      bundle.remove("sound2");
      bundle.putString("sound", str);
    } 
    if (!bundle.isEmpty())
      paramBundle.putBundle("notification", bundle); 
  }
  
  static boolean b(Context paramContext) {
    if (!((KeyguardManager)paramContext.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
      int i = Process.myPid();
      List list = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
      if (list != null) {
        Iterator<ActivityManager.RunningAppProcessInfo> iterator = list.iterator();
        while (true) {
          if (iterator.hasNext()) {
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = iterator.next();
            if (runningAppProcessInfo.pid == i)
              return (runningAppProcessInfo.importance == 100); 
            continue;
          } 
          return false;
        } 
      } 
    } 
    return false;
  }
  
  private Uri c(String paramString) {
    if (TextUtils.isEmpty(paramString))
      return null; 
    if (!"default".equals(paramString) && this.b.getResources().getIdentifier(paramString, "raw", this.b.getPackageName()) != 0) {
      String str1 = String.valueOf("android.resource://");
      String str2 = String.valueOf(this.b.getPackageName());
      return Uri.parse((new StringBuilder(String.valueOf(str1).length() + 5 + String.valueOf(str2).length() + String.valueOf(paramString).length())).append(str1).append(str2).append("/raw/").append(paramString).toString());
    } 
    return RingtoneManager.getDefaultUri(2);
  }
  
  private Notification d(Bundle paramBundle) {
    String str1 = b(paramBundle, "gcm.n.title");
    String str2 = b(paramBundle, "gcm.n.body");
    int i = b(a(paramBundle, "gcm.n.icon"));
    String str3 = a(paramBundle, "gcm.n.color");
    Uri uri = c(a(paramBundle, "gcm.n.sound2"));
    PendingIntent pendingIntent = e(paramBundle);
    NotificationCompat.Builder builder = (new NotificationCompat.Builder(this.b)).setAutoCancel(true).setSmallIcon(i);
    if (!TextUtils.isEmpty(str1)) {
      builder.setContentTitle(str1);
    } else {
      builder.setContentTitle(this.b.getApplicationInfo().loadLabel(this.b.getPackageManager()));
    } 
    if (!TextUtils.isEmpty(str2))
      builder.setContentText(str2); 
    if (!TextUtils.isEmpty(str3))
      builder.setColor(Color.parseColor(str3)); 
    if (uri != null)
      builder.setSound(uri); 
    if (pendingIntent != null)
      builder.setContentIntent(pendingIntent); 
    return builder.build();
  }
  
  private PendingIntent e(Bundle paramBundle) {
    Intent intent;
    String str = a(paramBundle, "gcm.n.click_action");
    if (!TextUtils.isEmpty(str)) {
      intent = new Intent(str);
      intent.setPackage(this.b.getPackageName());
      intent.setFlags(268435456);
    } else {
      intent = this.b.getPackageManager().getLaunchIntentForPackage(this.b.getPackageName());
      if (intent == null) {
        Log.w("GcmNotification", "No activity found to launch app");
        return null;
      } 
    } 
    paramBundle = new Bundle(paramBundle);
    cyw.zzD(paramBundle);
    intent.putExtras(paramBundle);
    for (String str1 : paramBundle.keySet()) {
      if (str1.startsWith("gcm.n.") || str1.startsWith("gcm.notification."))
        intent.removeExtra(str1); 
    } 
    return PendingIntent.getActivity(this.b, a(), intent, 1073741824);
  }
  
  boolean c(Bundle paramBundle) {
    Notification notification = d(paramBundle);
    a(a(paramBundle, "gcm.n.tag"), notification);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */