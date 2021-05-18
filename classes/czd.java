import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.support.annotation.RequiresPermission;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class czd {
  public static int a = 5000000;
  
  public static int b = 6500000;
  
  public static int c = 7000000;
  
  public static final String d = "SERVICE_NOT_AVAILABLE";
  
  public static final String e = "MAIN_THREAD";
  
  @Deprecated
  public static final String f = "deleted_messages";
  
  @Deprecated
  public static final String g = "gcm";
  
  @Deprecated
  public static final String h = "send_event";
  
  @Deprecated
  public static final String i = "send_error";
  
  public static final String j = "GCM";
  
  static czd k;
  
  private static final AtomicInteger p = new AtomicInteger(1);
  
  final Messenger l = new Messenger((Handler)new cze(this, Looper.getMainLooper()));
  
  private Context m;
  
  private PendingIntent n;
  
  private Map<String, Handler> o = Collections.synchronizedMap(new HashMap<String, Handler>());
  
  private final BlockingQueue<Intent> q = new LinkedBlockingQueue<Intent>();
  
  public static czd a(Context paramContext) {
    // Byte code:
    //   0: ldc czd
    //   2: monitorenter
    //   3: getstatic czd.k : Lczd;
    //   6: ifnonnull -> 29
    //   9: new czd
    //   12: dup
    //   13: invokespecial <init> : ()V
    //   16: putstatic czd.k : Lczd;
    //   19: getstatic czd.k : Lczd;
    //   22: aload_0
    //   23: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   26: putfield m : Landroid/content/Context;
    //   29: getstatic czd.k : Lczd;
    //   32: astore_0
    //   33: ldc czd
    //   35: monitorexit
    //   36: aload_0
    //   37: areturn
    //   38: astore_0
    //   39: ldc czd
    //   41: monitorexit
    //   42: aload_0
    //   43: athrow
    // Exception table:
    //   from	to	target	type
    //   3	29	38	finally
    //   29	33	38	finally
  }
  
  static String a(Intent paramIntent, String paramString) {
    if (paramIntent == null)
      throw new IOException("SERVICE_NOT_AVAILABLE"); 
    paramString = paramIntent.getStringExtra(paramString);
    if (paramString != null)
      return paramString; 
    String str = paramIntent.getStringExtra("error");
    if (str != null)
      throw new IOException(str); 
    throw new IOException("SERVICE_NOT_AVAILABLE");
  }
  
  private String a(String paramString) {
    int i = paramString.indexOf('@');
    String str = paramString;
    if (i > 0)
      str = paramString.substring(0, i); 
    return czr.c(this.m).f().a("", str, "GCM");
  }
  
  private void a(String paramString1, String paramString2, long paramLong, int paramInt, Bundle paramBundle) {
    Bundle bundle;
    if (paramString1 == null)
      throw new IllegalArgumentException("Missing 'to'"); 
    str = b(this.m);
    if (str == null)
      throw new IOException("SERVICE_NOT_AVAILABLE"); 
    Intent intent = new Intent("com.google.android.gcm.intent.SEND");
    if (paramBundle != null)
      intent.putExtras(paramBundle); 
    b(intent);
    intent.setPackage(str);
    intent.putExtra("google.to", paramString1);
    intent.putExtra("google.message_id", paramString2);
    intent.putExtra("google.ttl", Long.toString(paramLong));
    intent.putExtra("google.delay", Integer.toString(paramInt));
    intent.putExtra("google.from", a(paramString1));
    if (str.contains(".gsf")) {
      bundle = new Bundle();
      for (String str : paramBundle.keySet()) {
        Object object = paramBundle.get(str);
        if (object instanceof String) {
          str = String.valueOf(str);
          if (str.length() != 0) {
            str = "gcm.".concat(str);
          } else {
            str = new String("gcm.");
          } 
          bundle.putString(str, (String)object);
        } 
      } 
      bundle.putString("google.to", paramString1);
      bundle.putString("google.message_id", paramString2);
      czr.c(this.m).c("GCM", "upstream", bundle);
      return;
    } 
    this.m.sendOrderedBroadcast((Intent)bundle, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
  }
  
  public static String b(Context paramContext) {
    return dab.a(paramContext);
  }
  
  public static int c(Context paramContext) {
    PackageManager packageManager = paramContext.getPackageManager();
    String str = b(paramContext);
    if (str != null)
      try {
        PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
        if (packageInfo != null)
          return packageInfo.versionCode; 
      } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {} 
    return -1;
  }
  
  private String c() {
    String str1 = String.valueOf("google.rpc");
    String str2 = String.valueOf(String.valueOf(p.getAndIncrement()));
    return (str2.length() != 0) ? str1.concat(str2) : new String(str1);
  }
  
  private boolean c(Intent paramIntent) {
    String str2 = paramIntent.getStringExtra("In-Reply-To");
    String str1 = str2;
    if (str2 == null) {
      str1 = str2;
      if (paramIntent.hasExtra("error"))
        str1 = paramIntent.getStringExtra("google.message_id"); 
    } 
    if (str1 != null) {
      Handler handler = this.o.remove(str1);
      if (handler != null) {
        Message message = Message.obtain();
        message.obj = paramIntent;
        return handler.sendMessage(message);
      } 
    } 
    return false;
  }
  
  @Deprecated
  Intent a(Bundle paramBundle) {
    if (Looper.getMainLooper() == Looper.myLooper())
      throw new IOException("MAIN_THREAD"); 
    if (c(this.m) < 0)
      throw new IOException("Google Play Services missing"); 
    Bundle bundle = paramBundle;
    if (paramBundle == null)
      bundle = new Bundle(); 
    Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
    intent.setPackage(b(this.m));
    b(intent);
    intent.putExtra("google.message_id", c());
    intent.putExtras(bundle);
    intent.putExtra("google.messenger", (Parcelable)this.l);
    this.m.startService(intent);
    try {
      return this.q.poll(30000L, TimeUnit.MILLISECONDS);
    } catch (InterruptedException interruptedException) {
      throw new IOException(interruptedException.getMessage());
    } 
  }
  
  public String a(Intent paramIntent) {
    if (!"com.google.android.c2dm.intent.RECEIVE".equals(paramIntent.getAction()))
      return null; 
    String str2 = paramIntent.getStringExtra("message_type");
    String str1 = str2;
    return (str2 == null) ? "gcm" : str1;
  }
  
  @Deprecated
  @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
  public String a(String... paramVarArgs) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield m : Landroid/content/Context;
    //   6: invokestatic b : (Landroid/content/Context;)Ljava/lang/String;
    //   9: astore_2
    //   10: aload_2
    //   11: ifnonnull -> 29
    //   14: new java/io/IOException
    //   17: dup
    //   18: ldc 'SERVICE_NOT_AVAILABLE'
    //   20: invokespecial <init> : (Ljava/lang/String;)V
    //   23: athrow
    //   24: astore_1
    //   25: aload_0
    //   26: monitorexit
    //   27: aload_1
    //   28: athrow
    //   29: aload_0
    //   30: aload_1
    //   31: invokevirtual b : ([Ljava/lang/String;)Ljava/lang/String;
    //   34: astore_1
    //   35: new android/os/Bundle
    //   38: dup
    //   39: invokespecial <init> : ()V
    //   42: astore_3
    //   43: aload_2
    //   44: ldc '.gsf'
    //   46: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   49: ifeq -> 79
    //   52: aload_3
    //   53: ldc_w 'legacy.sender'
    //   56: aload_1
    //   57: invokevirtual putString : (Ljava/lang/String;Ljava/lang/String;)V
    //   60: aload_0
    //   61: getfield m : Landroid/content/Context;
    //   64: invokestatic c : (Landroid/content/Context;)Lczr;
    //   67: aload_1
    //   68: ldc 'GCM'
    //   70: aload_3
    //   71: invokevirtual b : (Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    //   74: astore_1
    //   75: aload_0
    //   76: monitorexit
    //   77: aload_1
    //   78: areturn
    //   79: aload_3
    //   80: ldc_w 'sender'
    //   83: aload_1
    //   84: invokevirtual putString : (Ljava/lang/String;Ljava/lang/String;)V
    //   87: aload_0
    //   88: aload_3
    //   89: invokevirtual a : (Landroid/os/Bundle;)Landroid/content/Intent;
    //   92: ldc_w 'registration_id'
    //   95: invokestatic a : (Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    //   98: astore_1
    //   99: goto -> 75
    // Exception table:
    //   from	to	target	type
    //   2	10	24	finally
    //   14	24	24	finally
    //   29	75	24	finally
    //   79	99	24	finally
  }
  
  @Deprecated
  @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
  public void a() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic getMainLooper : ()Landroid/os/Looper;
    //   5: invokestatic myLooper : ()Landroid/os/Looper;
    //   8: if_acmpne -> 26
    //   11: new java/io/IOException
    //   14: dup
    //   15: ldc 'MAIN_THREAD'
    //   17: invokespecial <init> : (Ljava/lang/String;)V
    //   20: athrow
    //   21: astore_1
    //   22: aload_0
    //   23: monitorexit
    //   24: aload_1
    //   25: athrow
    //   26: aload_0
    //   27: getfield m : Landroid/content/Context;
    //   30: invokestatic c : (Landroid/content/Context;)Lczr;
    //   33: invokevirtual d : ()V
    //   36: aload_0
    //   37: monitorexit
    //   38: return
    // Exception table:
    //   from	to	target	type
    //   2	21	21	finally
    //   26	36	21	finally
  }
  
  @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
  public void a(String paramString1, String paramString2, long paramLong, Bundle paramBundle) {
    a(paramString1, paramString2, paramLong, -1, paramBundle);
  }
  
  @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
  public void a(String paramString1, String paramString2, Bundle paramBundle) {
    a(paramString1, paramString2, -1L, paramBundle);
  }
  
  String b(String... paramVarArgs) {
    if (paramVarArgs == null || paramVarArgs.length == 0)
      throw new IllegalArgumentException("No senderIds"); 
    StringBuilder stringBuilder = new StringBuilder(paramVarArgs[0]);
    for (int i = 1; i < paramVarArgs.length; i++)
      stringBuilder.append(',').append(paramVarArgs[i]); 
    return stringBuilder.toString();
  }
  
  void b() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield n : Landroid/app/PendingIntent;
    //   6: ifnull -> 21
    //   9: aload_0
    //   10: getfield n : Landroid/app/PendingIntent;
    //   13: invokevirtual cancel : ()V
    //   16: aload_0
    //   17: aconst_null
    //   18: putfield n : Landroid/app/PendingIntent;
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    //   24: astore_1
    //   25: aload_0
    //   26: monitorexit
    //   27: aload_1
    //   28: athrow
    // Exception table:
    //   from	to	target	type
    //   2	21	24	finally
  }
  
  void b(Intent paramIntent) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield n : Landroid/app/PendingIntent;
    //   6: ifnonnull -> 39
    //   9: new android/content/Intent
    //   12: dup
    //   13: invokespecial <init> : ()V
    //   16: astore_2
    //   17: aload_2
    //   18: ldc_w 'com.google.example.invalidpackage'
    //   21: invokevirtual setPackage : (Ljava/lang/String;)Landroid/content/Intent;
    //   24: pop
    //   25: aload_0
    //   26: aload_0
    //   27: getfield m : Landroid/content/Context;
    //   30: iconst_0
    //   31: aload_2
    //   32: iconst_0
    //   33: invokestatic getBroadcast : (Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   36: putfield n : Landroid/app/PendingIntent;
    //   39: aload_1
    //   40: ldc_w 'app'
    //   43: aload_0
    //   44: getfield n : Landroid/app/PendingIntent;
    //   47: invokevirtual putExtra : (Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   50: pop
    //   51: aload_0
    //   52: monitorexit
    //   53: return
    //   54: astore_1
    //   55: aload_0
    //   56: monitorexit
    //   57: aload_1
    //   58: athrow
    // Exception table:
    //   from	to	target	type
    //   2	39	54	finally
    //   39	51	54	finally
  }
  
  public void close() {
    k = null;
    czm.a = null;
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\czd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */