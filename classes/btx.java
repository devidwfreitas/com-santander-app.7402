import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class btx {
  public static final String a = "com.facebook.orca";
  
  public static final String b = "com.facebook.orca.extra.PROTOCOL_VERSION";
  
  public static final String c = "com.facebook.orca.extra.APPLICATION_ID";
  
  public static final String d = "com.facebook.orca.extra.REPLY_TOKEN";
  
  public static final String e = "com.facebook.orca.extra.THREAD_TOKEN";
  
  public static final String f = "com.facebook.orca.extra.METADATA";
  
  public static final String g = "com.facebook.orca.extra.EXTERNAL_URI";
  
  public static final String h = "com.facebook.orca.extra.PARTICIPANTS";
  
  public static final String i = "com.facebook.orca.extra.IS_REPLY";
  
  public static final String j = "com.facebook.orca.extra.IS_COMPOSE";
  
  public static final int k = 20150314;
  
  public static final String l = "com.facebook.orca.category.PLATFORM_THREAD_20150314";
  
  private static final String m = "MessengerUtils";
  
  public static btv a(Intent paramIntent) {
    Set set = paramIntent.getCategories();
    if (set != null && set.contains("com.facebook.orca.category.PLATFORM_THREAD_20150314")) {
      Bundle bundle = eq.b(paramIntent);
      String str1 = bundle.getString("com.facebook.orca.extra.THREAD_TOKEN");
      String str2 = bundle.getString("com.facebook.orca.extra.METADATA");
      String str3 = bundle.getString("com.facebook.orca.extra.PARTICIPANTS");
      boolean bool1 = bundle.getBoolean("com.facebook.orca.extra.IS_REPLY");
      boolean bool2 = bundle.getBoolean("com.facebook.orca.extra.IS_COMPOSE");
      btw btw = btw.UNKNOWN;
      if (bool1) {
        btw = btw.REPLY_FLOW;
        return new btv(btw, str1, str2, a(str3));
      } 
      if (bool2)
        btw = btw.COMPOSE_FLOW; 
      return new btv(btw, str1, str2, a(str3));
    } 
    return null;
  }
  
  private static List<String> a(String paramString) {
    if (paramString == null || paramString.length() == 0)
      return (List)Collections.emptyList(); 
    String[] arrayOfString = paramString.split(",");
    ArrayList<String> arrayList = new ArrayList();
    int j = arrayOfString.length;
    int i = 0;
    while (true) {
      ArrayList<String> arrayList1 = arrayList;
      if (i < j) {
        arrayList.add(arrayOfString[i].trim());
        i++;
        continue;
      } 
      return arrayList1;
    } 
  }
  
  public static void a(Activity paramActivity, int paramInt, bty parambty) {
    if (!a((Context)paramActivity)) {
      b((Context)paramActivity);
      return;
    } 
    if (c((Context)paramActivity).contains(Integer.valueOf(20150314))) {
      b(paramActivity, paramInt, parambty);
      return;
    } 
    b((Context)paramActivity);
  }
  
  public static void a(Activity paramActivity, bty parambty) {
    Intent intent = paramActivity.getIntent();
    Set set = intent.getCategories();
    if (set == null) {
      paramActivity.setResult(0, null);
      paramActivity.finish();
      return;
    } 
    if (set.contains("com.facebook.orca.category.PLATFORM_THREAD_20150314")) {
      Bundle bundle = eq.b(intent);
      Intent intent1 = new Intent();
      if (set.contains("com.facebook.orca.category.PLATFORM_THREAD_20150314")) {
        intent1.putExtra("com.facebook.orca.extra.PROTOCOL_VERSION", 20150314);
        intent1.putExtra("com.facebook.orca.extra.THREAD_TOKEN", bundle.getString("com.facebook.orca.extra.THREAD_TOKEN"));
        intent1.setDataAndType(parambty.d, parambty.e);
        intent1.setFlags(1);
        intent1.putExtra("com.facebook.orca.extra.APPLICATION_ID", bhv.l());
        intent1.putExtra("com.facebook.orca.extra.METADATA", parambty.f);
        intent1.putExtra("com.facebook.orca.extra.EXTERNAL_URI", (Parcelable)parambty.g);
        paramActivity.setResult(-1, intent1);
        paramActivity.finish();
        return;
      } 
      throw new RuntimeException();
    } 
    paramActivity.setResult(0, null);
    paramActivity.finish();
  }
  
  private static void a(Context paramContext, String paramString) {
    paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
  }
  
  public static boolean a(Context paramContext) {
    try {
      paramContext.getPackageManager().getPackageInfo("com.facebook.orca", 0);
      return true;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      return false;
    } 
  }
  
  private static void b(Activity paramActivity, int paramInt, bty parambty) {
    try {
      Intent intent = new Intent("android.intent.action.SEND");
      intent.setFlags(1);
      intent.setPackage("com.facebook.orca");
      intent.putExtra("android.intent.extra.STREAM", (Parcelable)parambty.d);
      intent.setType(parambty.e);
      String str = bhv.l();
      if (str != null) {
        intent.putExtra("com.facebook.orca.extra.PROTOCOL_VERSION", 20150314);
        intent.putExtra("com.facebook.orca.extra.APPLICATION_ID", str);
        intent.putExtra("com.facebook.orca.extra.METADATA", parambty.f);
        intent.putExtra("com.facebook.orca.extra.EXTERNAL_URI", (Parcelable)parambty.g);
      } 
      paramActivity.startActivityForResult(intent, paramInt);
      return;
    } catch (ActivityNotFoundException activityNotFoundException) {
      paramActivity.startActivity(paramActivity.getPackageManager().getLaunchIntentForPackage("com.facebook.orca"));
      return;
    } 
  }
  
  public static void b(Context paramContext) {
    try {
      a(paramContext, "market://details?id=com.facebook.orca");
      return;
    } catch (ActivityNotFoundException activityNotFoundException) {
      a(paramContext, "http://play.google.com/store/apps/details?id=com.facebook.orca");
      return;
    } 
  }
  
  private static Set<Integer> c(Context paramContext) {
    ContentResolver contentResolver = paramContext.getContentResolver();
    HashSet<Integer> hashSet = new HashSet();
    Cursor cursor = contentResolver.query(Uri.parse("content://com.facebook.orca.provider.MessengerPlatformProvider/versions"), new String[] { "version" }, null, null, null);
    if (cursor != null) {
      try {
        int i = cursor.getColumnIndex("version");
      } finally {
        cursor.close();
      } 
      cursor.close();
    } 
    return hashSet;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\btx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */