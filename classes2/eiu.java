import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.support.v4.util.SimpleArrayMap;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.iid.MessengerCompat;
import com.google.firebase.iid.FirebaseInstanceId;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.Signature;
import java.util.Iterator;
import java.util.Random;

public class eiu {
  static String a = null;
  
  static int b = 0;
  
  static int c = 0;
  
  static int d = 0;
  
  Context e;
  
  Messenger f;
  
  Messenger g;
  
  MessengerCompat h;
  
  PendingIntent i;
  
  long j;
  
  long k;
  
  int l;
  
  int m;
  
  long n;
  
  private final SimpleArrayMap<String, eix> o = new SimpleArrayMap();
  
  public eiu(Context paramContext) {
    this.e = paramContext;
  }
  
  public static String a(Context paramContext) {
    if (a != null)
      return a; 
    b = Process.myUid();
    PackageManager packageManager = paramContext.getPackageManager();
    Iterator<ResolveInfo> iterator = packageManager.queryIntentServices(new Intent("com.google.android.c2dm.intent.REGISTER"), 0).iterator();
    while (true) {
      if (iterator.hasNext()) {
        ResolveInfo resolveInfo = iterator.next();
        if (packageManager.checkPermission("com.google.android.c2dm.permission.RECEIVE", resolveInfo.serviceInfo.packageName) == 0)
          try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(resolveInfo.serviceInfo.packageName, 0);
            int i = applicationInfo.uid;
            Log.w("InstanceID/Rpc", (new StringBuilder(17)).append("Found ").append(i).toString());
            c = applicationInfo.uid;
            a = resolveInfo.serviceInfo.packageName;
            return a;
          } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
            continue;
          }  
        String str1 = String.valueOf(((ResolveInfo)nameNotFoundException).serviceInfo.packageName);
        String str2 = String.valueOf("com.google.android.c2dm.intent.REGISTER");
        Log.w("InstanceID/Rpc", (new StringBuilder(String.valueOf(str1).length() + 56 + String.valueOf(str2).length())).append("Possible malicious package ").append(str1).append(" declares ").append(str2).append(" without permission").toString());
        continue;
      } 
      Log.w("InstanceID/Rpc", "Failed to resolve REGISTER intent, falling back");
      try {
        ApplicationInfo applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
        a = applicationInfo.packageName;
        c = applicationInfo.uid;
        return a;
      } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
        try {
          ApplicationInfo applicationInfo = packageManager.getApplicationInfo("com.google.android.gsf", 0);
          a = applicationInfo.packageName;
          c = applicationInfo.uid;
          return a;
        } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException1) {
          Log.w("InstanceID/Rpc", "Both Google Play Services and legacy GSF package are missing");
          return null;
        } 
      } 
    } 
  }
  
  static String a(KeyPair paramKeyPair, String... paramVarArgs) {
    try {
      byte[] arrayOfByte = TextUtils.join("\n", (Object[])paramVarArgs).getBytes("UTF-8");
      try {
        PrivateKey privateKey = paramKeyPair.getPrivate();
        if (privateKey instanceof java.security.interfaces.RSAPrivateKey) {
          String str1 = "SHA256withRSA";
          Signature signature1 = Signature.getInstance(str1);
          signature1.initSign(privateKey);
          signature1.update(arrayOfByte);
          return FirebaseInstanceId.a(signature1.sign());
        } 
        String str = "SHA256withECDSA";
        Signature signature = Signature.getInstance(str);
        signature.initSign(privateKey);
        signature.update(arrayOfByte);
        return FirebaseInstanceId.a(signature.sign());
      } catch (GeneralSecurityException generalSecurityException) {
        Log.e("InstanceID/Rpc", "Unable to sign registration request", generalSecurityException);
        return null;
      } 
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      Log.e("InstanceID/Rpc", "Unable to encode string", unsupportedEncodingException);
      return null;
    } 
  }
  
  private void a(String paramString) {
    if ("com.google.android.gsf".equals(a)) {
      this.l++;
      if (this.l >= 3) {
        if (this.l == 3)
          this.m = (new Random()).nextInt(1000) + 1000; 
        this.m *= 2;
        this.n = SystemClock.elapsedRealtime() + this.m;
        int i = this.m;
        Log.w("InstanceID/Rpc", (new StringBuilder(String.valueOf(paramString).length() + 31)).append("Backoff due to ").append(paramString).append(" for ").append(i).toString());
        return;
      } 
    } 
  }
  
  private void a(String paramString, Intent paramIntent) {
    eix eix;
    synchronized (this.o) {
      eix = (eix)this.o.remove(paramString);
      if (eix == null) {
        paramString = String.valueOf(paramString);
        if (paramString.length() != 0) {
          paramString = "Missing callback for ".concat(paramString);
        } else {
          paramString = new String("Missing callback for ");
        } 
        Log.w("InstanceID/Rpc", paramString);
        return;
      } 
    } 
    eix.a(paramIntent);
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_3} */
  }
  
  private void a(String paramString1, String paramString2) {
    // Byte code:
    //   0: aload_0
    //   1: getfield o : Landroid/support/v4/util/SimpleArrayMap;
    //   4: astore #4
    //   6: aload #4
    //   8: monitorenter
    //   9: aload_1
    //   10: ifnonnull -> 61
    //   13: iconst_0
    //   14: istore_3
    //   15: iload_3
    //   16: aload_0
    //   17: getfield o : Landroid/support/v4/util/SimpleArrayMap;
    //   20: invokevirtual size : ()I
    //   23: if_icmpge -> 50
    //   26: aload_0
    //   27: getfield o : Landroid/support/v4/util/SimpleArrayMap;
    //   30: iload_3
    //   31: invokevirtual valueAt : (I)Ljava/lang/Object;
    //   34: checkcast eix
    //   37: aload_2
    //   38: invokeinterface a : (Ljava/lang/String;)V
    //   43: iload_3
    //   44: iconst_1
    //   45: iadd
    //   46: istore_3
    //   47: goto -> 15
    //   50: aload_0
    //   51: getfield o : Landroid/support/v4/util/SimpleArrayMap;
    //   54: invokevirtual clear : ()V
    //   57: aload #4
    //   59: monitorexit
    //   60: return
    //   61: aload_0
    //   62: getfield o : Landroid/support/v4/util/SimpleArrayMap;
    //   65: aload_1
    //   66: invokevirtual remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   69: checkcast eix
    //   72: astore #5
    //   74: aload #5
    //   76: ifnonnull -> 130
    //   79: aload_1
    //   80: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   83: astore_1
    //   84: aload_1
    //   85: invokevirtual length : ()I
    //   88: ifeq -> 116
    //   91: ldc_w 'Missing callback for '
    //   94: aload_1
    //   95: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   98: astore_1
    //   99: ldc 'InstanceID/Rpc'
    //   101: aload_1
    //   102: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   105: pop
    //   106: aload #4
    //   108: monitorexit
    //   109: return
    //   110: astore_1
    //   111: aload #4
    //   113: monitorexit
    //   114: aload_1
    //   115: athrow
    //   116: new java/lang/String
    //   119: dup
    //   120: ldc_w 'Missing callback for '
    //   123: invokespecial <init> : (Ljava/lang/String;)V
    //   126: astore_1
    //   127: goto -> 99
    //   130: aload #5
    //   132: aload_2
    //   133: invokeinterface a : (Ljava/lang/String;)V
    //   138: goto -> 57
    // Exception table:
    //   from	to	target	type
    //   15	43	110	finally
    //   50	57	110	finally
    //   57	60	110	finally
    //   61	74	110	finally
    //   79	99	110	finally
    //   99	109	110	finally
    //   111	114	110	finally
    //   116	127	110	finally
    //   130	138	110	finally
  }
  
  private Intent b(Bundle paramBundle, KeyPair paramKeyPair) {
    // Byte code:
    //   0: invokestatic b : ()Ljava/lang/String;
    //   3: astore_3
    //   4: new eiw
    //   7: dup
    //   8: aconst_null
    //   9: invokespecial <init> : (Leiv;)V
    //   12: astore #5
    //   14: aload_0
    //   15: getfield o : Landroid/support/v4/util/SimpleArrayMap;
    //   18: astore #4
    //   20: aload #4
    //   22: monitorenter
    //   23: aload_0
    //   24: getfield o : Landroid/support/v4/util/SimpleArrayMap;
    //   27: aload_3
    //   28: aload #5
    //   30: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   33: pop
    //   34: aload #4
    //   36: monitorexit
    //   37: aload_0
    //   38: aload_1
    //   39: aload_2
    //   40: aload_3
    //   41: invokevirtual a : (Landroid/os/Bundle;Ljava/security/KeyPair;Ljava/lang/String;)V
    //   44: aload #5
    //   46: invokevirtual a : ()Landroid/content/Intent;
    //   49: astore_2
    //   50: aload_0
    //   51: getfield o : Landroid/support/v4/util/SimpleArrayMap;
    //   54: astore_1
    //   55: aload_1
    //   56: monitorenter
    //   57: aload_0
    //   58: getfield o : Landroid/support/v4/util/SimpleArrayMap;
    //   61: aload_3
    //   62: invokevirtual remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   65: pop
    //   66: aload_1
    //   67: monitorexit
    //   68: aload_2
    //   69: areturn
    //   70: astore_1
    //   71: aload #4
    //   73: monitorexit
    //   74: aload_1
    //   75: athrow
    //   76: astore_2
    //   77: aload_1
    //   78: monitorexit
    //   79: aload_2
    //   80: athrow
    //   81: astore_2
    //   82: aload_0
    //   83: getfield o : Landroid/support/v4/util/SimpleArrayMap;
    //   86: astore_1
    //   87: aload_1
    //   88: monitorenter
    //   89: aload_0
    //   90: getfield o : Landroid/support/v4/util/SimpleArrayMap;
    //   93: aload_3
    //   94: invokevirtual remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   97: pop
    //   98: aload_1
    //   99: monitorexit
    //   100: aload_2
    //   101: athrow
    //   102: astore_2
    //   103: aload_1
    //   104: monitorexit
    //   105: aload_2
    //   106: athrow
    // Exception table:
    //   from	to	target	type
    //   23	37	70	finally
    //   44	50	81	finally
    //   57	68	76	finally
    //   71	74	70	finally
    //   77	79	76	finally
    //   89	100	102	finally
    //   103	105	102	finally
  }
  
  public static String b() {
    // Byte code:
    //   0: ldc eiu
    //   2: monitorenter
    //   3: getstatic eiu.d : I
    //   6: istore_0
    //   7: iload_0
    //   8: iconst_1
    //   9: iadd
    //   10: putstatic eiu.d : I
    //   13: iload_0
    //   14: invokestatic toString : (I)Ljava/lang/String;
    //   17: astore_1
    //   18: ldc eiu
    //   20: monitorexit
    //   21: aload_1
    //   22: areturn
    //   23: astore_1
    //   24: ldc eiu
    //   26: monitorexit
    //   27: aload_1
    //   28: athrow
    // Exception table:
    //   from	to	target	type
    //   3	18	23	finally
  }
  
  Intent a(Bundle paramBundle, KeyPair paramKeyPair) {
    Intent intent2 = b(paramBundle, paramKeyPair);
    Intent intent1 = intent2;
    if (intent2 != null) {
      intent1 = intent2;
      if (intent2.hasExtra("google.messenger")) {
        Intent intent = b(paramBundle, paramKeyPair);
        intent1 = intent;
        if (intent != null) {
          intent1 = intent;
          if (intent.hasExtra("google.messenger"))
            intent1 = null; 
        } 
      } 
    } 
    return intent1;
  }
  
  void a() {
    if (this.f != null)
      return; 
    a(this.e);
    this.f = new Messenger(new eiv(this, Looper.getMainLooper()));
  }
  
  public void a(Intent paramIntent) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield i : Landroid/app/PendingIntent;
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
    //   27: getfield e : Landroid/content/Context;
    //   30: iconst_0
    //   31: aload_2
    //   32: iconst_0
    //   33: invokestatic getBroadcast : (Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   36: putfield i : Landroid/app/PendingIntent;
    //   39: aload_1
    //   40: ldc_w 'app'
    //   43: aload_0
    //   44: getfield i : Landroid/app/PendingIntent;
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
  
  protected void a(Intent paramIntent, String paramString) {
    this.j = SystemClock.elapsedRealtime();
    paramIntent.putExtra("kid", (new StringBuilder(String.valueOf(paramString).length() + 5)).append("|ID|").append(paramString).append("|").toString());
    paramIntent.putExtra("X-kid", (new StringBuilder(String.valueOf(paramString).length() + 5)).append("|ID|").append(paramString).append("|").toString());
    boolean bool = "com.google.android.gsf".equals(a);
    if (Log.isLoggable("InstanceID/Rpc", 3)) {
      paramString = String.valueOf(paramIntent.getExtras());
      Log.d("InstanceID/Rpc", (new StringBuilder(String.valueOf(paramString).length() + 8)).append("Sending ").append(paramString).toString());
    } 
    if (bool) {
      this.e.startService(paramIntent);
      return;
    } 
    paramIntent.putExtra("google.messenger", (Parcelable)this.f);
    if (this.g != null || this.h != null) {
      Message message = Message.obtain();
      message.obj = paramIntent;
      try {
        if (this.g != null) {
          this.g.send(message);
          return;
        } 
      } catch (RemoteException remoteException) {
        if (Log.isLoggable("InstanceID/Rpc", 3))
          Log.d("InstanceID/Rpc", "Messenger failed, fallback to startService"); 
        this.e.startService(paramIntent);
        return;
      } 
      this.h.b((Message)remoteException);
      return;
    } 
    this.e.startService(paramIntent);
  }
  
  public void a(Bundle paramBundle, KeyPair paramKeyPair, String paramString) {
    long l = SystemClock.elapsedRealtime();
    if (this.n != 0L && l <= this.n) {
      long l1 = this.n;
      int i = this.m;
      Log.w("InstanceID/Rpc", (new StringBuilder(78)).append("Backoff mode, next request attempt: ").append(l1 - l).append(" interval: ").append(i).toString());
      throw new IOException("RETRY_LATER");
    } 
    a();
    if (a == null)
      throw new IOException("MISSING_INSTANCEID_SERVICE"); 
    this.j = SystemClock.elapsedRealtime();
    Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
    intent.setPackage(a);
    paramBundle.putString("gmsv", Integer.toString(FirebaseInstanceId.a(this.e, a(this.e))));
    paramBundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
    paramBundle.putString("app_ver", Integer.toString(FirebaseInstanceId.b(this.e)));
    paramBundle.putString("app_ver_name", FirebaseInstanceId.c(this.e));
    paramBundle.putString("cliv", "fiid-10298000");
    paramBundle.putString("appid", FirebaseInstanceId.a(paramKeyPair));
    String str = FirebaseInstanceId.a(this.e);
    if (str != null)
      paramBundle.putString("gmp_app_id", str); 
    str = FirebaseInstanceId.a(paramKeyPair.getPublic().getEncoded());
    paramBundle.putString("pub2", str);
    paramBundle.putString("sig", a(paramKeyPair, new String[] { this.e.getPackageName(), str }));
    intent.putExtras(paramBundle);
    a(intent);
    a(intent, paramString);
  }
  
  public void a(Message paramMessage) {
    if (paramMessage == null)
      return; 
    if (paramMessage.obj instanceof Intent) {
      Intent intent = (Intent)paramMessage.obj;
      intent.setExtrasClassLoader(MessengerCompat.class.getClassLoader());
      if (intent.hasExtra("google.messenger")) {
        Parcelable parcelable = intent.getParcelableExtra("google.messenger");
        if (parcelable instanceof MessengerCompat)
          this.h = (MessengerCompat)parcelable; 
        if (parcelable instanceof Messenger)
          this.g = (Messenger)parcelable; 
      } 
      d((Intent)paramMessage.obj);
      return;
    } 
    Log.w("InstanceID/Rpc", "Dropping invalid message");
  }
  
  String b(Intent paramIntent) {
    if (paramIntent == null)
      throw new IOException("SERVICE_NOT_AVAILABLE"); 
    String str2 = paramIntent.getStringExtra("registration_id");
    String str1 = str2;
    if (str2 == null)
      str1 = paramIntent.getStringExtra("unregistered"); 
    if (str1 == null) {
      str1 = paramIntent.getStringExtra("error");
      if (str1 != null)
        throw new IOException(str1); 
      String str = String.valueOf(paramIntent.getExtras());
      Log.w("InstanceID/Rpc", (new StringBuilder(String.valueOf(str).length() + 29)).append("Unexpected response from GCM ").append(str).toString(), new Throwable());
      throw new IOException("SERVICE_NOT_AVAILABLE");
    } 
    return str1;
  }
  
  void c(Intent paramIntent) {
    String str1;
    String str2;
    String str3 = paramIntent.getStringExtra("error");
    if (str3 == null) {
      str1 = String.valueOf(paramIntent.getExtras());
      Log.w("InstanceID/Rpc", (new StringBuilder(String.valueOf(str1).length() + 49)).append("Unexpected response, no error or registration id ").append(str1).toString());
      return;
    } 
    if (Log.isLoggable("InstanceID/Rpc", 3)) {
      str2 = String.valueOf(str3);
      if (str2.length() != 0) {
        str2 = "Received InstanceID error ".concat(str2);
      } else {
        str2 = new String("Received InstanceID error ");
      } 
      Log.d("InstanceID/Rpc", str2);
    } 
    if (str3.startsWith("|")) {
      String[] arrayOfString = str3.split("\\|");
      if (!"ID".equals(arrayOfString[1])) {
        str2 = String.valueOf(str3);
        if (str2.length() != 0) {
          str2 = "Unexpected structured response ".concat(str2);
        } else {
          str2 = new String("Unexpected structured response ");
        } 
        Log.w("InstanceID/Rpc", str2);
      } 
      if (arrayOfString.length > 2) {
        String str4 = arrayOfString[2];
        String str5 = arrayOfString[3];
        str3 = str4;
        str2 = str5;
        if (str5.startsWith(":")) {
          str2 = str5.substring(1);
          str3 = str4;
        } 
      } else {
        str2 = "UNKNOWN";
        str3 = null;
      } 
      str1.putExtra("error", str2);
    } else {
      String str = null;
      str2 = str3;
      str3 = str;
    } 
    a(str3, str2);
    long l = str1.getLongExtra("Retry-After", 0L);
    if (l > 0L) {
      this.k = SystemClock.elapsedRealtime();
      this.m = (int)l * 1000;
      this.n = SystemClock.elapsedRealtime() + this.m;
      int i = this.m;
      Log.w("InstanceID/Rpc", (new StringBuilder(52)).append("Explicit request from server to backoff: ").append(i).toString());
      return;
    } 
    if ("SERVICE_NOT_AVAILABLE".equals(str2) || "AUTHENTICATION_FAILED".equals(str2)) {
      a(str2);
      return;
    } 
  }
  
  public void d(Intent paramIntent) {
    String str1;
    if (paramIntent == null) {
      if (Log.isLoggable("InstanceID/Rpc", 3))
        Log.d("InstanceID/Rpc", "Unexpected response: null"); 
      return;
    } 
    if (!"com.google.android.c2dm.intent.REGISTRATION".equals(paramIntent.getAction())) {
      if (Log.isLoggable("InstanceID/Rpc", 3)) {
        str1 = String.valueOf(paramIntent.getAction());
        if (str1.length() != 0) {
          str1 = "Unexpected response ".concat(str1);
        } else {
          str1 = new String("Unexpected response ");
        } 
        Log.d("InstanceID/Rpc", str1);
        return;
      } 
      return;
    } 
    String str3 = str1.getStringExtra("registration_id");
    String str2 = str3;
    if (str3 == null)
      str2 = str1.getStringExtra("unregistered"); 
    if (str2 == null) {
      c((Intent)str1);
      return;
    } 
    this.j = SystemClock.elapsedRealtime();
    this.n = 0L;
    this.l = 0;
    this.m = 0;
    if (str2.startsWith("|")) {
      String[] arrayOfString = str2.split("\\|");
      if (!"ID".equals(arrayOfString[1])) {
        str2 = String.valueOf(str2);
        if (str2.length() != 0) {
          str2 = "Unexpected structured response ".concat(str2);
        } else {
          str2 = new String("Unexpected structured response ");
        } 
        Log.w("InstanceID/Rpc", str2);
      } 
      str3 = arrayOfString[2];
      if (arrayOfString.length > 4)
        if ("SYNC".equals(arrayOfString[3])) {
          FirebaseInstanceId.d(this.e);
        } else if ("RST".equals(arrayOfString[3])) {
          FirebaseInstanceId.a(this.e, eis.a(this.e, null).d());
          str1.removeExtra("registration_id");
          a(str3, (Intent)str1);
          return;
        }  
      String str = arrayOfString[arrayOfString.length - 1];
      str2 = str;
      if (str.startsWith(":"))
        str2 = str.substring(1); 
      str1.putExtra("registration_id", str2);
      str2 = str3;
    } else {
      str2 = null;
    } 
    if (str2 == null) {
      if (Log.isLoggable("InstanceID/Rpc", 3)) {
        Log.d("InstanceID/Rpc", "Ignoring response without a request ID");
        return;
      } 
      return;
    } 
    a(str2, (Intent)str1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eiu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */