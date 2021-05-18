import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.AsyncTask;
import android.util.Base64;
import android.util.Log;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import java.io.File;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

public final class bhv {
  private static final int A = 1;
  
  private static int B = 0;
  
  private static final Object C;
  
  private static final int D;
  
  private static String E;
  
  private static final int F = 100;
  
  private static final String G = "com.facebook.sdk.attributionTracking";
  
  private static final String H = "%s/activities";
  
  private static final BlockingQueue<Runnable> I;
  
  private static final ThreadFactory J;
  
  private static Boolean K;
  
  static final String a = "The callback request code offset can't be updated once the SDK is initialized. Call FacebookSdk.setCallbackRequestCodeOffset inside your Application.onCreate method";
  
  static final String b = "The callback request code offset can't be negative.";
  
  public static final String c = "com.facebook.sdk.ApplicationId";
  
  public static final String d = "com.facebook.sdk.ApplicationName";
  
  public static final String e = "com.facebook.sdk.ClientToken";
  
  public static final String f = "com.facebook.sdk.WebDialogTheme";
  
  public static final String g = "com.facebook.sdk.AutoLogAppEventsEnabled";
  
  public static final String h = "com.facebook.sdk.CallbackOffset";
  
  private static final String i = bhv.class.getCanonicalName();
  
  private static final HashSet<bjb> j = new HashSet<bjb>(Arrays.asList(new bjb[] { bjb.DEVELOPER_ERRORS }));
  
  private static final int k = 64206;
  
  private static volatile Executor l;
  
  private static volatile String m;
  
  private static volatile String n;
  
  private static volatile String o;
  
  private static volatile int p = 0;
  
  private static volatile Boolean q;
  
  private static final String r = "facebook.com";
  
  private static volatile String s = "facebook.com";
  
  private static AtomicLong t = new AtomicLong(65536L);
  
  private static volatile boolean u = false;
  
  private static boolean v = false;
  
  private static bps<File> w;
  
  private static Context x;
  
  private static final int y = 5;
  
  private static final int z = 128;
  
  static {
    B = 64206;
    C = new Object();
    D = bjy.com_facebook_activity_theme;
    E = bqn.d();
    I = new LinkedBlockingQueue<Runnable>(10);
    J = new bhw();
    K = Boolean.valueOf(false);
  }
  
  public static void a(int paramInt) {
    if (paramInt == 0)
      paramInt = D; 
    p = paramInt;
  }
  
  public static void a(long paramLong) {
    t.set(paramLong);
  }
  
  @Deprecated
  public static void a(Context paramContext) {
    // Byte code:
    //   0: ldc bhv
    //   2: monitorenter
    //   3: aload_0
    //   4: aconst_null
    //   5: invokestatic a : (Landroid/content/Context;Lbia;)V
    //   8: ldc bhv
    //   10: monitorexit
    //   11: return
    //   12: astore_0
    //   13: ldc bhv
    //   15: monitorexit
    //   16: aload_0
    //   17: athrow
    // Exception table:
    //   from	to	target	type
    //   3	8	12	finally
  }
  
  @Deprecated
  public static void a(Context paramContext, int paramInt) {
    // Byte code:
    //   0: ldc bhv
    //   2: monitorenter
    //   3: aload_0
    //   4: iload_1
    //   5: aconst_null
    //   6: invokestatic a : (Landroid/content/Context;ILbia;)V
    //   9: ldc bhv
    //   11: monitorexit
    //   12: return
    //   13: astore_0
    //   14: ldc bhv
    //   16: monitorexit
    //   17: aload_0
    //   18: athrow
    // Exception table:
    //   from	to	target	type
    //   3	9	13	finally
  }
  
  @Deprecated
  public static void a(Context paramContext, int paramInt, bia parambia) {
    // Byte code:
    //   0: ldc bhv
    //   2: monitorenter
    //   3: getstatic bhv.K : Ljava/lang/Boolean;
    //   6: invokevirtual booleanValue : ()Z
    //   9: ifeq -> 35
    //   12: iload_1
    //   13: getstatic bhv.B : I
    //   16: if_icmpeq -> 35
    //   19: new bhp
    //   22: dup
    //   23: ldc 'The callback request code offset can't be updated once the SDK is initialized. Call FacebookSdk.setCallbackRequestCodeOffset inside your Application.onCreate method'
    //   25: invokespecial <init> : (Ljava/lang/String;)V
    //   28: athrow
    //   29: astore_0
    //   30: ldc bhv
    //   32: monitorexit
    //   33: aload_0
    //   34: athrow
    //   35: iload_1
    //   36: ifge -> 49
    //   39: new bhp
    //   42: dup
    //   43: ldc 'The callback request code offset can't be negative.'
    //   45: invokespecial <init> : (Ljava/lang/String;)V
    //   48: athrow
    //   49: iload_1
    //   50: putstatic bhv.B : I
    //   53: aload_0
    //   54: aload_2
    //   55: invokestatic a : (Landroid/content/Context;Lbia;)V
    //   58: ldc bhv
    //   60: monitorexit
    //   61: return
    // Exception table:
    //   from	to	target	type
    //   3	29	29	finally
    //   39	49	29	finally
    //   49	58	29	finally
  }
  
  @Deprecated
  public static void a(Context paramContext, bia parambia) {
    // Byte code:
    //   0: ldc bhv
    //   2: monitorenter
    //   3: getstatic bhv.K : Ljava/lang/Boolean;
    //   6: invokevirtual booleanValue : ()Z
    //   9: ifeq -> 26
    //   12: aload_1
    //   13: ifnull -> 22
    //   16: aload_1
    //   17: invokeinterface a : ()V
    //   22: ldc bhv
    //   24: monitorexit
    //   25: return
    //   26: aload_0
    //   27: ldc 'applicationContext'
    //   29: invokestatic a : (Ljava/lang/Object;Ljava/lang/String;)V
    //   32: aload_0
    //   33: iconst_0
    //   34: invokestatic b : (Landroid/content/Context;Z)V
    //   37: aload_0
    //   38: iconst_0
    //   39: invokestatic a : (Landroid/content/Context;Z)V
    //   42: aload_0
    //   43: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   46: putstatic bhv.x : Landroid/content/Context;
    //   49: getstatic bhv.x : Landroid/content/Context;
    //   52: invokestatic c : (Landroid/content/Context;)V
    //   55: getstatic bhv.m : Ljava/lang/String;
    //   58: invokestatic a : (Ljava/lang/String;)Z
    //   61: ifeq -> 80
    //   64: new bhp
    //   67: dup
    //   68: ldc 'A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.'
    //   70: invokespecial <init> : (Ljava/lang/String;)V
    //   73: athrow
    //   74: astore_0
    //   75: ldc bhv
    //   77: monitorexit
    //   78: aload_0
    //   79: athrow
    //   80: iconst_1
    //   81: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   84: putstatic bhv.K : Ljava/lang/Boolean;
    //   87: invokestatic a : ()V
    //   90: invokestatic b : ()V
    //   93: getstatic bhv.x : Landroid/content/Context;
    //   96: invokestatic a : (Landroid/content/Context;)Lbmz;
    //   99: pop
    //   100: new bps
    //   103: dup
    //   104: new bhx
    //   107: dup
    //   108: invokespecial <init> : ()V
    //   111: invokespecial <init> : (Ljava/util/concurrent/Callable;)V
    //   114: putstatic bhv.w : Lbps;
    //   117: new java/util/concurrent/FutureTask
    //   120: dup
    //   121: new bhy
    //   124: dup
    //   125: aload_1
    //   126: aload_0
    //   127: invokespecial <init> : (Lbia;Landroid/content/Context;)V
    //   130: invokespecial <init> : (Ljava/util/concurrent/Callable;)V
    //   133: astore_0
    //   134: invokestatic f : ()Ljava/util/concurrent/Executor;
    //   137: aload_0
    //   138: invokeinterface execute : (Ljava/lang/Runnable;)V
    //   143: goto -> 22
    // Exception table:
    //   from	to	target	type
    //   3	12	74	finally
    //   16	22	74	finally
    //   26	74	74	finally
    //   80	143	74	finally
  }
  
  public static void a(Context paramContext, String paramString) {
    paramContext = paramContext.getApplicationContext();
    f().execute(new bhz(paramContext, paramString));
  }
  
  public static void a(Context paramContext, boolean paramBoolean) {
    paramContext.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putBoolean("limitEventUsage", paramBoolean).apply();
  }
  
  public static void a(bjb parambjb) {
    synchronized (j) {
      j.add(parambjb);
      t();
      return;
    } 
  }
  
  public static void a(File paramFile) {
    w = new bps<File>(paramFile);
  }
  
  public static void a(String paramString) {
    Log.w(i, "WARNING: Calling setFacebookDomain from non-DEBUG code.");
    s = paramString;
  }
  
  public static void a(Executor paramExecutor) {
    bqx.a(paramExecutor, "executor");
    synchronized (C) {
      l = paramExecutor;
      return;
    } 
  }
  
  public static void a(boolean paramBoolean) {
    u = paramBoolean;
  }
  
  public static boolean a() {
    // Byte code:
    //   0: ldc bhv
    //   2: monitorenter
    //   3: getstatic bhv.K : Ljava/lang/Boolean;
    //   6: invokevirtual booleanValue : ()Z
    //   9: istore_0
    //   10: ldc bhv
    //   12: monitorexit
    //   13: iload_0
    //   14: ireturn
    //   15: astore_1
    //   16: ldc bhv
    //   18: monitorexit
    //   19: aload_1
    //   20: athrow
    // Exception table:
    //   from	to	target	type
    //   3	10	15	finally
  }
  
  static bix b(Context paramContext, String paramString) {
    GraphRequest graphRequest;
    if (paramContext == null || paramString == null)
      try {
        throw new IllegalArgumentException("Both context and applicationId must be non-null");
      } catch (Exception exception) {
        bqq.a("Facebook-publish", exception);
        return new bix(null, null, new FacebookRequestError(null, exception));
      }  
    bmv bmv = bmv.a((Context)exception);
    SharedPreferences sharedPreferences = exception.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
    String str1 = paramString + "ping";
    String str2 = paramString + "json";
    long l = sharedPreferences.getLong(str1, 0L);
    String str3 = sharedPreferences.getString(str2, null);
    try {
      JSONObject jSONObject = bms.a(bmu.MOBILE_INSTALL_EVENT, bmv, bla.d((Context)exception), b((Context)exception), (Context)exception);
      graphRequest = GraphRequest.a(null, String.format("%s/activities", new Object[] { paramString }), jSONObject, null);
      if (l != 0L) {
        if (str3 != null) {
          try {
            jSONObject = new JSONObject(str3);
          } catch (JSONException jSONException) {
            jSONException = null;
          } 
        } else {
          jSONObject = null;
        } 
        return (jSONObject == null) ? bix.a("true", (HttpURLConnection)null, new biu(new GraphRequest[] { graphRequest })).get(0) : new bix(null, null, null, jSONObject);
      } 
    } catch (JSONException jSONException) {
      throw new bhp("An error occurred while publishing install.", jSONException);
    } 
    bix bix = graphRequest.m();
    SharedPreferences.Editor editor = sharedPreferences.edit();
    editor.putLong(str1, System.currentTimeMillis());
    if (bix.b() != null)
      editor.putString(str2, bix.b().toString()); 
    editor.apply();
    return bix;
  }
  
  public static Set<bjb> b() {
    synchronized (j) {
      return (Set)Collections.unmodifiableSet(new HashSet(j));
    } 
  }
  
  public static void b(bjb parambjb) {
    synchronized (j) {
      j.remove(parambjb);
      return;
    } 
  }
  
  public static void b(String paramString) {
    if (!bqq.a(paramString) && !E.equals(paramString))
      E = paramString; 
  }
  
  public static void b(boolean paramBoolean) {
    v = paramBoolean;
  }
  
  public static boolean b(int paramInt) {
    return (paramInt >= B && paramInt < B + 100);
  }
  
  public static boolean b(Context paramContext) {
    bqx.b();
    return paramContext.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
  }
  
  public static void c() {
    synchronized (j) {
      j.clear();
      return;
    } 
  }
  
  static void c(Context paramContext) {
    if (paramContext != null)
      try {
        ApplicationInfo applicationInfo = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
        if (applicationInfo != null && applicationInfo.metaData != null) {
          if (m == null) {
            Object object = applicationInfo.metaData.get("com.facebook.sdk.ApplicationId");
            if (object instanceof String) {
              object = object;
              if (object.toLowerCase(Locale.ROOT).startsWith("fb")) {
                m = object.substring(2);
              } else {
                m = (String)object;
              } 
            } else if (object instanceof Integer) {
              throw new bhp("App Ids cannot be directly placed in the manifest.They must be prefixed by 'fb' or be placed in the string resource file.");
            } 
          } 
          if (n == null)
            n = applicationInfo.metaData.getString("com.facebook.sdk.ApplicationName"); 
          if (o == null)
            o = applicationInfo.metaData.getString("com.facebook.sdk.ClientToken"); 
          if (p == 0)
            a(applicationInfo.metaData.getInt("com.facebook.sdk.WebDialogTheme")); 
          if (B == 64206)
            B = applicationInfo.metaData.getInt("com.facebook.sdk.CallbackOffset", 64206); 
          if (q == null) {
            q = Boolean.valueOf(applicationInfo.metaData.getBoolean("com.facebook.sdk.AutoLogAppEventsEnabled", true));
            return;
          } 
        } 
        return;
      } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
        return;
      }  
  }
  
  public static void c(String paramString) {
    m = paramString;
  }
  
  public static void c(boolean paramBoolean) {
    q = Boolean.valueOf(paramBoolean);
  }
  
  public static boolean c(bjb parambjb) {
    synchronized (j) {
      if (d() && j.contains(parambjb))
        return true; 
    } 
    boolean bool = false;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
    return bool;
  }
  
  public static String d(Context paramContext) {
    bqx.b();
    if (paramContext != null) {
      PackageManager packageManager = paramContext.getPackageManager();
      if (packageManager != null) {
        String str = paramContext.getPackageName();
        try {
          PackageInfo packageInfo = packageManager.getPackageInfo(str, 64);
          Signature[] arrayOfSignature = packageInfo.signatures;
          if (arrayOfSignature != null && arrayOfSignature.length != 0)
            try {
              MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
              messageDigest.update(packageInfo.signatures[0].toByteArray());
              return Base64.encodeToString(messageDigest.digest(), 9);
            } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
              return null;
            }  
        } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
          return null;
        } 
      } 
    } 
    return null;
  }
  
  public static void d(String paramString) {
    n = paramString;
  }
  
  public static boolean d() {
    return u;
  }
  
  public static void e(String paramString) {
    o = paramString;
  }
  
  public static boolean e() {
    return v;
  }
  
  public static Executor f() {
    synchronized (C) {
      if (l == null)
        l = AsyncTask.THREAD_POOL_EXECUTOR; 
      return l;
    } 
  }
  
  public static String g() {
    return s;
  }
  
  public static Context h() {
    bqx.b();
    return x;
  }
  
  public static String i() {
    return E;
  }
  
  public static String j() {
    return "4.22.1";
  }
  
  public static long k() {
    bqx.b();
    return t.get();
  }
  
  public static String l() {
    bqx.b();
    return m;
  }
  
  public static String m() {
    bqx.b();
    return n;
  }
  
  public static String n() {
    bqx.b();
    return o;
  }
  
  public static int o() {
    bqx.b();
    return p;
  }
  
  public static boolean p() {
    bqx.b();
    return q.booleanValue();
  }
  
  public static File q() {
    bqx.b();
    return w.a();
  }
  
  public static int r() {
    bqx.b();
    return B;
  }
  
  private static void t() {
    if (j.contains(bjb.GRAPH_API_DEBUG_INFO) && !j.contains(bjb.GRAPH_API_DEBUG_WARNING))
      j.add(bjb.GRAPH_API_DEBUG_WARNING); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bhv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */