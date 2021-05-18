import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.gcm.Task;

public class cyy {
  public static final int a = 0;
  
  public static final int b = 1;
  
  public static final int c = 2;
  
  private static cyy d;
  
  private Context e;
  
  private final PendingIntent f;
  
  private cyy(Context paramContext) {
    this.e = paramContext;
    this.f = PendingIntent.getBroadcast(this.e, 0, (new Intent()).setPackage("com.google.example.invalidpackage"), 0);
  }
  
  private Intent a() {
    String str = czd.b(this.e);
    int i = -1;
    if (str != null)
      i = czd.c(this.e); 
    if (str == null || i < czd.a) {
      Log.e("GcmNetworkManager", (new StringBuilder(91)).append("Google Play Services is not available, dropping GcmNetworkManager request. code=").append(i).toString());
      return null;
    } 
    Intent intent = new Intent("com.google.android.gms.gcm.ACTION_SCHEDULE");
    intent.setPackage(str);
    intent.putExtra("app", (Parcelable)this.f);
    intent.putExtra("source", 4);
    intent.putExtra("source_version", 10298000);
    return intent;
  }
  
  public static cyy a(Context paramContext) {
    // Byte code:
    //   0: ldc cyy
    //   2: monitorenter
    //   3: getstatic cyy.d : Lcyy;
    //   6: ifnonnull -> 23
    //   9: new cyy
    //   12: dup
    //   13: aload_0
    //   14: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   17: invokespecial <init> : (Landroid/content/Context;)V
    //   20: putstatic cyy.d : Lcyy;
    //   23: getstatic cyy.d : Lcyy;
    //   26: astore_0
    //   27: ldc cyy
    //   29: monitorexit
    //   30: aload_0
    //   31: areturn
    //   32: astore_0
    //   33: ldc cyy
    //   35: monitorexit
    //   36: aload_0
    //   37: athrow
    // Exception table:
    //   from	to	target	type
    //   3	23	32	finally
    //   23	30	32	finally
    //   33	36	32	finally
  }
  
  private void a(ComponentName paramComponentName) {
    b(paramComponentName.getClassName());
    Intent intent = a();
    if (intent == null)
      return; 
    intent.putExtra("scheduler_action", "CANCEL_ALL");
    intent.putExtra("component", (Parcelable)paramComponentName);
    this.e.sendBroadcast(intent);
  }
  
  static void a(String paramString) {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("Must provide a valid tag."); 
    if (100 < paramString.length())
      throw new IllegalArgumentException("Tag is larger than max permissible tag length (100)"); 
  }
  
  private void a(String paramString, ComponentName paramComponentName) {
    a(paramString);
    b(paramComponentName.getClassName());
    Intent intent = a();
    if (intent == null)
      return; 
    intent.putExtra("scheduler_action", "CANCEL_TASK");
    intent.putExtra("tag", paramString);
    intent.putExtra("component", (Parcelable)paramComponentName);
    this.e.sendBroadcast(intent);
  }
  
  private void b(String paramString) {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_1
    //   3: ldc 'GcmTaskService must not be null.'
    //   5: invokestatic a : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   8: pop
    //   9: new android/content/Intent
    //   12: dup
    //   13: ldc 'com.google.android.gms.gcm.ACTION_TASK_READY'
    //   15: invokespecial <init> : (Ljava/lang/String;)V
    //   18: astore #4
    //   20: aload #4
    //   22: aload_0
    //   23: getfield e : Landroid/content/Context;
    //   26: invokevirtual getPackageName : ()Ljava/lang/String;
    //   29: invokevirtual setPackage : (Ljava/lang/String;)Landroid/content/Intent;
    //   32: pop
    //   33: aload_0
    //   34: getfield e : Landroid/content/Context;
    //   37: invokevirtual getPackageManager : ()Landroid/content/pm/PackageManager;
    //   40: aload #4
    //   42: iconst_0
    //   43: invokevirtual queryIntentServices : (Landroid/content/Intent;I)Ljava/util/List;
    //   46: astore #4
    //   48: aload #4
    //   50: ifnull -> 154
    //   53: aload #4
    //   55: invokeinterface size : ()I
    //   60: ifeq -> 154
    //   63: iconst_1
    //   64: istore_2
    //   65: iload_2
    //   66: ldc 'There is no GcmTaskService component registered within this package. Have you extended GcmTaskService correctly?'
    //   68: invokestatic b : (ZLjava/lang/Object;)V
    //   71: aload #4
    //   73: invokeinterface iterator : ()Ljava/util/Iterator;
    //   78: astore #4
    //   80: aload #4
    //   82: invokeinterface hasNext : ()Z
    //   87: ifeq -> 159
    //   90: aload #4
    //   92: invokeinterface next : ()Ljava/lang/Object;
    //   97: checkcast android/content/pm/ResolveInfo
    //   100: getfield serviceInfo : Landroid/content/pm/ServiceInfo;
    //   103: getfield name : Ljava/lang/String;
    //   106: aload_1
    //   107: invokevirtual equals : (Ljava/lang/Object;)Z
    //   110: ifeq -> 80
    //   113: iload_3
    //   114: istore_2
    //   115: iload_2
    //   116: new java/lang/StringBuilder
    //   119: dup
    //   120: aload_1
    //   121: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   124: invokevirtual length : ()I
    //   127: bipush #119
    //   129: iadd
    //   130: invokespecial <init> : (I)V
    //   133: ldc 'The GcmTaskService class you provided '
    //   135: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: aload_1
    //   139: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: ldc ' does not seem to support receiving com.google.android.gms.gcm.ACTION_TASK_READY.'
    //   144: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: invokevirtual toString : ()Ljava/lang/String;
    //   150: invokestatic b : (ZLjava/lang/Object;)V
    //   153: return
    //   154: iconst_0
    //   155: istore_2
    //   156: goto -> 65
    //   159: iconst_0
    //   160: istore_2
    //   161: goto -> 115
  }
  
  public void a(Task paramTask) {
    b(paramTask.c());
    Intent intent = a();
    if (intent == null)
      return; 
    Bundle bundle = intent.getExtras();
    bundle.putString("scheduler_action", "SCHEDULE_TASK");
    paramTask.a(bundle);
    intent.putExtras(bundle);
    this.e.sendBroadcast(intent);
  }
  
  public void a(Class<? extends cza> paramClass) {
    b((Class)paramClass);
  }
  
  public void a(String paramString, Class<? extends cza> paramClass) {
    b(paramString, (Class)paramClass);
  }
  
  public void b(Class<? extends Service> paramClass) {
    a(new ComponentName(this.e, paramClass));
  }
  
  public void b(String paramString, Class<? extends Service> paramClass) {
    a(paramString, new ComponentName(this.e, paramClass));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cyy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */