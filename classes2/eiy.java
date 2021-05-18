import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.support.v4.util.SimpleArrayMap;
import android.util.Log;
import com.google.firebase.iid.FirebaseInstanceIdInternalReceiver;
import java.util.LinkedList;
import java.util.Queue;

public class eiy {
  private static eiy c;
  
  @VisibleForTesting
  final Queue<Intent> a = new LinkedList<Intent>();
  
  @VisibleForTesting
  final Queue<Intent> b = new LinkedList<Intent>();
  
  private final SimpleArrayMap<String, String> d = new SimpleArrayMap();
  
  private Boolean e = null;
  
  public static PendingIntent a(Context paramContext, int paramInt1, Intent paramIntent, int paramInt2) {
    return a(paramContext, paramInt1, "com.google.firebase.INSTANCE_ID_EVENT", paramIntent, paramInt2);
  }
  
  private static PendingIntent a(Context paramContext, int paramInt1, String paramString, Intent paramIntent, int paramInt2) {
    Intent intent = new Intent(paramContext, FirebaseInstanceIdInternalReceiver.class);
    intent.setAction(paramString);
    intent.putExtra("wrapped_intent", (Parcelable)paramIntent);
    return PendingIntent.getBroadcast(paramContext, paramInt1, intent, paramInt2);
  }
  
  public static eiy a() {
    // Byte code:
    //   0: ldc eiy
    //   2: monitorenter
    //   3: getstatic eiy.c : Leiy;
    //   6: ifnonnull -> 19
    //   9: new eiy
    //   12: dup
    //   13: invokespecial <init> : ()V
    //   16: putstatic eiy.c : Leiy;
    //   19: getstatic eiy.c : Leiy;
    //   22: astore_0
    //   23: ldc eiy
    //   25: monitorexit
    //   26: aload_0
    //   27: areturn
    //   28: astore_0
    //   29: ldc eiy
    //   31: monitorexit
    //   32: aload_0
    //   33: athrow
    // Exception table:
    //   from	to	target	type
    //   3	19	28	finally
    //   19	23	28	finally
  }
  
  private boolean a(Context paramContext) {
    if (this.e == null) {
      boolean bool;
      if (paramContext.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0) {
        bool = true;
      } else {
        bool = false;
      } 
      this.e = Boolean.valueOf(bool);
    } 
    return this.e.booleanValue();
  }
  
  private int b(Context paramContext, Intent paramIntent) {
    c(paramContext, paramIntent);
    try {
      ComponentName componentName;
      if (a(paramContext)) {
        componentName = WakefulBroadcastReceiver.startWakefulService(paramContext, paramIntent);
      } else {
        componentName = componentName.startService(paramIntent);
        Log.d("FirebaseInstanceId", "Missing wake lock permission, service start may be delayed");
      } 
      if (componentName == null) {
        Log.e("FirebaseInstanceId", "Error while delivering the message: ServiceIntent not found.");
        return 404;
      } 
    } catch (SecurityException securityException) {
      Log.e("FirebaseInstanceId", "Error while delivering the message to the serviceIntent", securityException);
      return 401;
    } 
    return -1;
  }
  
  public static PendingIntent b(Context paramContext, int paramInt1, Intent paramIntent, int paramInt2) {
    return a(paramContext, paramInt1, "com.google.firebase.MESSAGING_EVENT", paramIntent, paramInt2);
  }
  
  private void c(Context paramContext, Intent paramIntent) {
    // Byte code:
    //   0: aload_0
    //   1: getfield d : Landroid/support/v4/util/SimpleArrayMap;
    //   4: astore_3
    //   5: aload_3
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield d : Landroid/support/v4/util/SimpleArrayMap;
    //   11: aload_2
    //   12: invokevirtual getAction : ()Ljava/lang/String;
    //   15: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   18: checkcast java/lang/String
    //   21: astore #4
    //   23: aload_3
    //   24: monitorexit
    //   25: aload #4
    //   27: astore_3
    //   28: aload #4
    //   30: ifnonnull -> 237
    //   33: aload_1
    //   34: invokevirtual getPackageManager : ()Landroid/content/pm/PackageManager;
    //   37: aload_2
    //   38: iconst_0
    //   39: invokevirtual resolveService : (Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    //   42: astore_3
    //   43: aload_3
    //   44: ifnull -> 54
    //   47: aload_3
    //   48: getfield serviceInfo : Landroid/content/pm/ServiceInfo;
    //   51: ifnonnull -> 68
    //   54: ldc 'FirebaseInstanceId'
    //   56: ldc 'Failed to resolve target intent service, skipping classname enforcement'
    //   58: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   61: pop
    //   62: return
    //   63: astore_1
    //   64: aload_3
    //   65: monitorexit
    //   66: aload_1
    //   67: athrow
    //   68: aload_3
    //   69: getfield serviceInfo : Landroid/content/pm/ServiceInfo;
    //   72: astore_3
    //   73: aload_1
    //   74: invokevirtual getPackageName : ()Ljava/lang/String;
    //   77: aload_3
    //   78: getfield packageName : Ljava/lang/String;
    //   81: invokevirtual equals : (Ljava/lang/Object;)Z
    //   84: ifeq -> 94
    //   87: aload_3
    //   88: getfield name : Ljava/lang/String;
    //   91: ifnonnull -> 163
    //   94: aload_3
    //   95: getfield packageName : Ljava/lang/String;
    //   98: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   101: astore_1
    //   102: aload_3
    //   103: getfield name : Ljava/lang/String;
    //   106: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   109: astore_2
    //   110: ldc 'FirebaseInstanceId'
    //   112: new java/lang/StringBuilder
    //   115: dup
    //   116: aload_1
    //   117: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   120: invokevirtual length : ()I
    //   123: bipush #94
    //   125: iadd
    //   126: aload_2
    //   127: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   130: invokevirtual length : ()I
    //   133: iadd
    //   134: invokespecial <init> : (I)V
    //   137: ldc 'Error resolving target intent service, skipping classname enforcement. Resolved service was: '
    //   139: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: aload_1
    //   143: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: ldc '/'
    //   148: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: aload_2
    //   152: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: invokevirtual toString : ()Ljava/lang/String;
    //   158: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   161: pop
    //   162: return
    //   163: aload_3
    //   164: getfield name : Ljava/lang/String;
    //   167: astore #4
    //   169: aload #4
    //   171: astore_3
    //   172: aload #4
    //   174: ldc '.'
    //   176: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   179: ifeq -> 212
    //   182: aload_1
    //   183: invokevirtual getPackageName : ()Ljava/lang/String;
    //   186: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   189: astore_3
    //   190: aload #4
    //   192: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   195: astore #4
    //   197: aload #4
    //   199: invokevirtual length : ()I
    //   202: ifeq -> 288
    //   205: aload_3
    //   206: aload #4
    //   208: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   211: astore_3
    //   212: aload_0
    //   213: getfield d : Landroid/support/v4/util/SimpleArrayMap;
    //   216: astore #4
    //   218: aload #4
    //   220: monitorenter
    //   221: aload_0
    //   222: getfield d : Landroid/support/v4/util/SimpleArrayMap;
    //   225: aload_2
    //   226: invokevirtual getAction : ()Ljava/lang/String;
    //   229: aload_3
    //   230: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   233: pop
    //   234: aload #4
    //   236: monitorexit
    //   237: ldc 'FirebaseInstanceId'
    //   239: iconst_3
    //   240: invokestatic isLoggable : (Ljava/lang/String;I)Z
    //   243: ifeq -> 277
    //   246: aload_3
    //   247: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   250: astore #4
    //   252: aload #4
    //   254: invokevirtual length : ()I
    //   257: ifeq -> 306
    //   260: ldc 'Restricting intent to a specific service: '
    //   262: aload #4
    //   264: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   267: astore #4
    //   269: ldc 'FirebaseInstanceId'
    //   271: aload #4
    //   273: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   276: pop
    //   277: aload_2
    //   278: aload_1
    //   279: invokevirtual getPackageName : ()Ljava/lang/String;
    //   282: aload_3
    //   283: invokevirtual setClassName : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   286: pop
    //   287: return
    //   288: new java/lang/String
    //   291: dup
    //   292: aload_3
    //   293: invokespecial <init> : (Ljava/lang/String;)V
    //   296: astore_3
    //   297: goto -> 212
    //   300: astore_1
    //   301: aload #4
    //   303: monitorexit
    //   304: aload_1
    //   305: athrow
    //   306: new java/lang/String
    //   309: dup
    //   310: ldc 'Restricting intent to a specific service: '
    //   312: invokespecial <init> : (Ljava/lang/String;)V
    //   315: astore #4
    //   317: goto -> 269
    // Exception table:
    //   from	to	target	type
    //   7	25	63	finally
    //   64	66	63	finally
    //   221	237	300	finally
    //   301	304	300	finally
  }
  
  public int a(Context paramContext, String paramString, Intent paramIntent) {
    Intent intent;
    byte b = -1;
    switch (paramString.hashCode()) {
      default:
        switch (b) {
          default:
            str = String.valueOf(paramString);
            if (str.length() != 0) {
              str = "Unknown service action: ".concat(str);
              Log.w("FirebaseInstanceId", str);
              return 500;
            } 
            break;
          case 0:
            this.a.offer(paramIntent);
            intent = new Intent(paramString);
            intent.setPackage(str.getPackageName());
            return b((Context)str, intent);
          case 1:
            break;
        } 
        this.b.offer(paramIntent);
        intent = new Intent((String)intent);
        intent.setPackage(str.getPackageName());
        return b((Context)str, intent);
      case -842411455:
        if (intent.equals("com.google.firebase.INSTANCE_ID_EVENT"))
          b = 0; 
      case 41532704:
        if (intent.equals("com.google.firebase.MESSAGING_EVENT"))
          b = 1; 
    } 
    String str = new String("Unknown service action: ");
    Log.w("FirebaseInstanceId", str);
    return 500;
  }
  
  public void a(Context paramContext, Intent paramIntent) {
    a(paramContext, "com.google.firebase.INSTANCE_ID_EVENT", paramIntent);
  }
  
  public Intent b() {
    return this.a.poll();
  }
  
  public Intent c() {
    return this.b.poll();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eiy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */