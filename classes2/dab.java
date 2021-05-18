import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.iid.MessengerCompat;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.Signature;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

public class dab {
  static String a = null;
  
  static int b = 0;
  
  static int c = 0;
  
  static int d = 0;
  
  Context e;
  
  Map<String, Object> f = new HashMap<String, Object>();
  
  Messenger g;
  
  Messenger h;
  
  MessengerCompat i;
  
  PendingIntent j;
  
  long k;
  
  long l;
  
  int m;
  
  int n;
  
  long o;
  
  public dab(Context paramContext) {
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
          return czr.a(signature1.sign());
        } 
        String str = "SHA256withECDSA";
        Signature signature = Signature.getInstance(str);
        signature.initSign(privateKey);
        signature.update(arrayOfByte);
        return czr.a(signature.sign());
      } catch (GeneralSecurityException generalSecurityException) {
        Log.e("InstanceID/Rpc", "Unable to sign registration request", generalSecurityException);
        return null;
      } 
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      Log.e("InstanceID/Rpc", "Unable to encode string", unsupportedEncodingException);
      return null;
    } 
  }
  
  private void a(Object paramObject) {
    synchronized (getClass()) {
      for (String str : this.f.keySet()) {
        Object object = this.f.get(str);
        this.f.put(str, paramObject);
        a(object, paramObject);
      } 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
  }
  
  private void a(Object paramObject1, Object paramObject2) {
    if (paramObject1 instanceof ConditionVariable)
      ((ConditionVariable)paramObject1).open(); 
    if (paramObject1 instanceof Messenger) {
      paramObject1 = paramObject1;
      Message message = Message.obtain();
      message.obj = paramObject2;
      try {
        paramObject1.send(message);
        return;
      } catch (RemoteException remoteException) {
        String str = String.valueOf(remoteException);
        Log.w("InstanceID/Rpc", (new StringBuilder(String.valueOf(str).length() + 24)).append("Failed to send response ").append(str).toString());
        return;
      } 
    } 
  }
  
  private void a(String paramString) {
    if ("com.google.android.gsf".equals(a)) {
      this.m++;
      if (this.m >= 3) {
        if (this.m == 3)
          this.n = (new Random()).nextInt(1000) + 1000; 
        this.n *= 2;
        this.o = SystemClock.elapsedRealtime() + this.n;
        int i = this.n;
        Log.w("InstanceID/Rpc", (new StringBuilder(String.valueOf(paramString).length() + 31)).append("Backoff due to ").append(paramString).append(" for ").append(i).toString());
        return;
      } 
    } 
  }
  
  private void a(String paramString, Object paramObject) {
    synchronized (getClass()) {
      Object object = this.f.get(paramString);
      this.f.put(paramString, paramObject);
      a(object, paramObject);
      return;
    } 
  }
  
  private static int b(Context paramContext) {
    PackageManager packageManager = paramContext.getPackageManager();
    try {
      return (packageManager.getPackageInfo(a(paramContext), 0)).versionCode;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      return -1;
    } 
  }
  
  private Intent b(Bundle paramBundle, KeyPair paramKeyPair) {
    ConditionVariable conditionVariable = new ConditionVariable();
    String str = b();
    synchronized (getClass()) {
      this.f.put(str, conditionVariable);
      a(paramBundle, paramKeyPair, str);
      conditionVariable.block(30000L);
      Class<?> clazz = getClass();
      /* monitor enter ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Class<Wildcard{?}>}, name=null} */
      try {
        Intent intent;
        paramKeyPair = (KeyPair)this.f.remove(str);
        if (paramKeyPair instanceof Intent) {
          intent = (Intent)paramKeyPair;
          /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Class<Wildcard{?}>}, name=null} */
          return intent;
        } 
        if (intent instanceof String)
          throw new IOException((String)intent); 
      } finally {}
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{android/os/Bundle}, name=paramBundle} */
    throw paramKeyPair;
  }
  
  public static String b() {
    // Byte code:
    //   0: ldc dab
    //   2: monitorenter
    //   3: getstatic dab.d : I
    //   6: istore_0
    //   7: iload_0
    //   8: iconst_1
    //   9: iadd
    //   10: putstatic dab.d : I
    //   13: iload_0
    //   14: invokestatic toString : (I)Ljava/lang/String;
    //   17: astore_1
    //   18: ldc dab
    //   20: monitorexit
    //   21: aload_1
    //   22: areturn
    //   23: astore_1
    //   24: ldc dab
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
      if (intent2.hasExtra("google.messenger"))
        intent1 = b(paramBundle, paramKeyPair); 
    } 
    return intent1;
  }
  
  void a() {
    if (this.g != null)
      return; 
    a(this.e);
    this.g = new Messenger(new dac(this, Looper.getMainLooper()));
  }
  
  void a(Intent paramIntent) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield j : Landroid/app/PendingIntent;
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
    //   36: putfield j : Landroid/app/PendingIntent;
    //   39: aload_1
    //   40: ldc_w 'app'
    //   43: aload_0
    //   44: getfield j : Landroid/app/PendingIntent;
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
    this.k = SystemClock.elapsedRealtime();
    paramIntent.putExtra("kid", (new StringBuilder(String.valueOf(paramString).length() + 5)).append("|ID|").append(paramString).append("|").toString());
    paramIntent.putExtra("X-kid", (new StringBuilder(String.valueOf(paramString).length() + 5)).append("|ID|").append(paramString).append("|").toString());
    boolean bool = "com.google.android.gsf".equals(a);
    paramString = paramIntent.getStringExtra("useGsf");
    if (paramString != null)
      bool = "1".equals(paramString); 
    if (Log.isLoggable("InstanceID/Rpc", 3)) {
      paramString = String.valueOf(paramIntent.getExtras());
      Log.d("InstanceID/Rpc", (new StringBuilder(String.valueOf(paramString).length() + 8)).append("Sending ").append(paramString).toString());
    } 
    if (this.h != null) {
      paramIntent.putExtra("google.messenger", (Parcelable)this.g);
      Message message = Message.obtain();
      message.obj = paramIntent;
      try {
        this.h.send(message);
        return;
      } catch (RemoteException remoteException) {
        if (Log.isLoggable("InstanceID/Rpc", 3))
          Log.d("InstanceID/Rpc", "Messenger failed, fallback to startService"); 
      } 
    } 
    if (bool) {
      Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
      intent.setPackage(this.e.getPackageName());
      intent.putExtra("GSF", (Parcelable)paramIntent);
      this.e.startService(intent);
      return;
    } 
    paramIntent.putExtra("google.messenger", (Parcelable)this.g);
    paramIntent.putExtra("messenger2", "1");
    if (this.i != null) {
      Message message = Message.obtain();
      message.obj = paramIntent;
      try {
        this.i.b(message);
        return;
      } catch (RemoteException remoteException) {
        if (Log.isLoggable("InstanceID/Rpc", 3))
          Log.d("InstanceID/Rpc", "Messenger failed, fallback to startService"); 
      } 
    } 
    this.e.startService(paramIntent);
  }
  
  void a(Bundle paramBundle, KeyPair paramKeyPair, String paramString) {
    long l = SystemClock.elapsedRealtime();
    if (this.o != 0L && l <= this.o) {
      long l1 = this.o;
      int i = this.n;
      Log.w("InstanceID/Rpc", (new StringBuilder(78)).append("Backoff mode, next request attempt: ").append(l1 - l).append(" interval: ").append(i).toString());
      throw new IOException("RETRY_LATER");
    } 
    a();
    if (a == null)
      throw new IOException("MISSING_INSTANCEID_SERVICE"); 
    this.k = SystemClock.elapsedRealtime();
    Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
    intent.setPackage(a);
    paramBundle.putString("gmsv", Integer.toString(b(this.e)));
    paramBundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
    paramBundle.putString("app_ver", Integer.toString(czr.a(this.e)));
    paramBundle.putString("app_ver_name", czr.b(this.e));
    paramBundle.putString("cliv", "iid-10298000");
    paramBundle.putString("appid", czr.a(paramKeyPair));
    String str = czr.a(paramKeyPair.getPublic().getEncoded());
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
          this.i = (MessengerCompat)parcelable; 
        if (parcelable instanceof Messenger)
          this.h = (Messenger)parcelable; 
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
    paramIntent.getLongExtra("Retry-After", 0L);
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
    if (str3 == null) {
      a(str2);
    } else {
      a(str3, str2);
    } 
    long l = str1.getLongExtra("Retry-After", 0L);
    if (l > 0L) {
      this.l = SystemClock.elapsedRealtime();
      this.n = (int)l * 1000;
      this.o = SystemClock.elapsedRealtime() + this.n;
      int i = this.n;
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
    String str2 = paramIntent.getAction();
    if (!"com.google.android.c2dm.intent.REGISTRATION".equals(str2) && !"com.google.android.gms.iid.InstanceID".equals(str2)) {
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
    str2 = str1.getStringExtra("registration_id");
    if (str2 == null)
      str2 = str1.getStringExtra("unregistered"); 
    if (str2 == null) {
      c((Intent)str1);
      return;
    } 
    this.k = SystemClock.elapsedRealtime();
    this.o = 0L;
    this.m = 0;
    this.n = 0;
    String str3 = null;
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
          czs.zzbz(this.e);
        } else if ("RST".equals(arrayOfString[3])) {
          czs.zza(this.e, czr.c(this.e).f());
          str1.removeExtra("registration_id");
          a(str3, str1);
          return;
        }  
      String str = arrayOfString[arrayOfString.length - 1];
      str2 = str;
      if (str.startsWith(":"))
        str2 = str.substring(1); 
      str1.putExtra("registration_id", str2);
    } 
    if (str3 == null) {
      a(str1);
      return;
    } 
    a(str3, str1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */