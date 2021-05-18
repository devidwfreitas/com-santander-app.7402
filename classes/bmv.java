import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Looper;
import android.support.annotation.Nullable;
import java.lang.reflect.Method;

public class bmv {
  private static final String a = bmv.class.getCanonicalName();
  
  private static final String b = "com.facebook.katana.provider.AttributionIdProvider";
  
  private static final String c = "com.facebook.wakizashi.provider.AttributionIdProvider";
  
  private static final String d = "aid";
  
  private static final String e = "androidid";
  
  private static final String f = "limit_tracking";
  
  private static final int g = 0;
  
  private static final long h = 3600000L;
  
  private static bmv n;
  
  private String i;
  
  private String j;
  
  private String k;
  
  private boolean l;
  
  private long m;
  
  public static bmv a(Context paramContext) {
    // Byte code:
    //   0: invokestatic myLooper : ()Landroid/os/Looper;
    //   3: invokestatic getMainLooper : ()Landroid/os/Looper;
    //   6: if_acmpne -> 18
    //   9: getstatic bmv.a : Ljava/lang/String;
    //   12: ldc 'getAttributionIdentifiers should not be called from the main thread'
    //   14: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   17: pop
    //   18: getstatic bmv.n : Lbmv;
    //   21: ifnull -> 47
    //   24: invokestatic currentTimeMillis : ()J
    //   27: getstatic bmv.n : Lbmv;
    //   30: getfield m : J
    //   33: lsub
    //   34: ldc2_w 3600000
    //   37: lcmp
    //   38: ifge -> 47
    //   41: getstatic bmv.n : Lbmv;
    //   44: astore_0
    //   45: aload_0
    //   46: areturn
    //   47: aload_0
    //   48: invokestatic b : (Landroid/content/Context;)Lbmv;
    //   51: astore #5
    //   53: aload_0
    //   54: invokevirtual getPackageManager : ()Landroid/content/pm/PackageManager;
    //   57: ldc 'com.facebook.katana.provider.AttributionIdProvider'
    //   59: iconst_0
    //   60: invokevirtual resolveContentProvider : (Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    //   63: ifnull -> 114
    //   66: ldc 'content://com.facebook.katana.provider.AttributionIdProvider'
    //   68: invokestatic parse : (Ljava/lang/String;)Landroid/net/Uri;
    //   71: astore #4
    //   73: aload_0
    //   74: invokestatic e : (Landroid/content/Context;)Ljava/lang/String;
    //   77: astore #6
    //   79: aload #6
    //   81: ifnull -> 91
    //   84: aload #5
    //   86: aload #6
    //   88: putfield k : Ljava/lang/String;
    //   91: aload #4
    //   93: ifnonnull -> 137
    //   96: aload #5
    //   98: invokestatic a : (Lbmv;)Lbmv;
    //   101: astore_0
    //   102: iconst_0
    //   103: ifeq -> 45
    //   106: new java/lang/NullPointerException
    //   109: dup
    //   110: invokespecial <init> : ()V
    //   113: athrow
    //   114: aload_0
    //   115: invokevirtual getPackageManager : ()Landroid/content/pm/PackageManager;
    //   118: ldc 'com.facebook.wakizashi.provider.AttributionIdProvider'
    //   120: iconst_0
    //   121: invokevirtual resolveContentProvider : (Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    //   124: ifnull -> 422
    //   127: ldc 'content://com.facebook.wakizashi.provider.AttributionIdProvider'
    //   129: invokestatic parse : (Ljava/lang/String;)Landroid/net/Uri;
    //   132: astore #4
    //   134: goto -> 73
    //   137: aload_0
    //   138: invokevirtual getContentResolver : ()Landroid/content/ContentResolver;
    //   141: aload #4
    //   143: iconst_3
    //   144: anewarray java/lang/String
    //   147: dup
    //   148: iconst_0
    //   149: ldc 'aid'
    //   151: aastore
    //   152: dup
    //   153: iconst_1
    //   154: ldc 'androidid'
    //   156: aastore
    //   157: dup
    //   158: iconst_2
    //   159: ldc 'limit_tracking'
    //   161: aastore
    //   162: aconst_null
    //   163: aconst_null
    //   164: aconst_null
    //   165: invokevirtual query : (Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   168: astore #4
    //   170: aload #4
    //   172: ifnull -> 188
    //   175: aload #4
    //   177: astore_0
    //   178: aload #4
    //   180: invokeinterface moveToFirst : ()Z
    //   185: ifne -> 216
    //   188: aload #4
    //   190: astore_0
    //   191: aload #5
    //   193: invokestatic a : (Lbmv;)Lbmv;
    //   196: astore #5
    //   198: aload #5
    //   200: astore_0
    //   201: aload #4
    //   203: ifnull -> 45
    //   206: aload #4
    //   208: invokeinterface close : ()V
    //   213: aload #5
    //   215: areturn
    //   216: aload #4
    //   218: astore_0
    //   219: aload #4
    //   221: ldc 'aid'
    //   223: invokeinterface getColumnIndex : (Ljava/lang/String;)I
    //   228: istore_3
    //   229: aload #4
    //   231: astore_0
    //   232: aload #4
    //   234: ldc 'androidid'
    //   236: invokeinterface getColumnIndex : (Ljava/lang/String;)I
    //   241: istore_2
    //   242: aload #4
    //   244: astore_0
    //   245: aload #4
    //   247: ldc 'limit_tracking'
    //   249: invokeinterface getColumnIndex : (Ljava/lang/String;)I
    //   254: istore_1
    //   255: aload #4
    //   257: astore_0
    //   258: aload #5
    //   260: aload #4
    //   262: iload_3
    //   263: invokeinterface getString : (I)Ljava/lang/String;
    //   268: putfield i : Ljava/lang/String;
    //   271: iload_2
    //   272: ifle -> 325
    //   275: iload_1
    //   276: ifle -> 325
    //   279: aload #4
    //   281: astore_0
    //   282: aload #5
    //   284: invokevirtual b : ()Ljava/lang/String;
    //   287: ifnonnull -> 325
    //   290: aload #4
    //   292: astore_0
    //   293: aload #5
    //   295: aload #4
    //   297: iload_2
    //   298: invokeinterface getString : (I)Ljava/lang/String;
    //   303: putfield j : Ljava/lang/String;
    //   306: aload #4
    //   308: astore_0
    //   309: aload #5
    //   311: aload #4
    //   313: iload_1
    //   314: invokeinterface getString : (I)Ljava/lang/String;
    //   319: invokestatic parseBoolean : (Ljava/lang/String;)Z
    //   322: putfield l : Z
    //   325: aload #4
    //   327: ifnull -> 337
    //   330: aload #4
    //   332: invokeinterface close : ()V
    //   337: aload #5
    //   339: invokestatic a : (Lbmv;)Lbmv;
    //   342: areturn
    //   343: astore #5
    //   345: aconst_null
    //   346: astore #4
    //   348: aload #4
    //   350: astore_0
    //   351: getstatic bmv.a : Ljava/lang/String;
    //   354: new java/lang/StringBuilder
    //   357: dup
    //   358: invokespecial <init> : ()V
    //   361: ldc 'Caught unexpected exception in getAttributionId(): '
    //   363: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   366: aload #5
    //   368: invokevirtual toString : ()Ljava/lang/String;
    //   371: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   374: invokevirtual toString : ()Ljava/lang/String;
    //   377: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   380: pop
    //   381: aload #4
    //   383: ifnull -> 393
    //   386: aload #4
    //   388: invokeinterface close : ()V
    //   393: aconst_null
    //   394: areturn
    //   395: astore #4
    //   397: aconst_null
    //   398: astore_0
    //   399: aload_0
    //   400: ifnull -> 409
    //   403: aload_0
    //   404: invokeinterface close : ()V
    //   409: aload #4
    //   411: athrow
    //   412: astore #4
    //   414: goto -> 399
    //   417: astore #5
    //   419: goto -> 348
    //   422: aconst_null
    //   423: astore #4
    //   425: goto -> 73
    // Exception table:
    //   from	to	target	type
    //   53	73	343	java/lang/Exception
    //   53	73	395	finally
    //   73	79	343	java/lang/Exception
    //   73	79	395	finally
    //   84	91	343	java/lang/Exception
    //   84	91	395	finally
    //   96	102	343	java/lang/Exception
    //   96	102	395	finally
    //   114	134	343	java/lang/Exception
    //   114	134	395	finally
    //   137	170	343	java/lang/Exception
    //   137	170	395	finally
    //   178	188	417	java/lang/Exception
    //   178	188	412	finally
    //   191	198	417	java/lang/Exception
    //   191	198	412	finally
    //   219	229	417	java/lang/Exception
    //   219	229	412	finally
    //   232	242	417	java/lang/Exception
    //   232	242	412	finally
    //   245	255	417	java/lang/Exception
    //   245	255	412	finally
    //   258	271	417	java/lang/Exception
    //   258	271	412	finally
    //   282	290	417	java/lang/Exception
    //   282	290	412	finally
    //   293	306	417	java/lang/Exception
    //   293	306	412	finally
    //   309	325	417	java/lang/Exception
    //   309	325	412	finally
    //   351	381	412	finally
  }
  
  private static bmv a(bmv parambmv) {
    parambmv.m = System.currentTimeMillis();
    n = parambmv;
    return parambmv;
  }
  
  private static bmv b(Context paramContext) {
    bmv bmv2 = c(paramContext);
    bmv bmv1 = bmv2;
    if (bmv2 == null) {
      bmv bmv3 = d(paramContext);
      bmv1 = bmv3;
      if (bmv3 == null)
        bmv1 = new bmv(); 
    } 
    return bmv1;
  }
  
  private static bmv c(Context paramContext) {
    try {
      if (Looper.myLooper() == Looper.getMainLooper())
        throw new bhp("getAndroidId cannot be called on the main thread."); 
    } catch (Exception exception) {
      bqq.a("android_id", exception);
      return null;
    } 
    Method method1 = bqq.a("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", new Class[] { Context.class });
    if (method1 == null)
      return null; 
    Object object2 = bqq.a((Object)null, method1, new Object[] { exception });
    if (!(object2 instanceof Integer) || ((Integer)object2).intValue() != 0)
      return null; 
    object2 = bqq.a("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[] { Context.class });
    if (object2 == null)
      return null; 
    Object object1 = bqq.a((Object)null, (Method)object2, new Object[] { exception });
    if (object1 == null)
      return null; 
    object2 = bqq.a(object1.getClass(), "getId", new Class[0]);
    Method method2 = bqq.a(object1.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
    if (object2 == null || method2 == null)
      return null; 
    bmv bmv1 = new bmv();
    bmv1.j = (String)bqq.a(object1, (Method)object2, new Object[0]);
    bmv1.l = ((Boolean)bqq.a(object1, method2, new Object[0])).booleanValue();
    return bmv1;
  }
  
  private static bmv d(Context paramContext) {
    bmy bmy = new bmy(null);
    Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
    intent.setPackage("com.google.android.gms");
    if (paramContext.bindService(intent, bmy, 1))
      try {
        bmx bmx = new bmx(bmy.a());
        bmv bmv1 = new bmv();
        bmv1.j = bmx.a();
        bmv1.l = bmx.b();
        return bmv1;
      } catch (Exception exception) {
        bqq.a("android_id", exception);
        return null;
      } finally {
        paramContext.unbindService(bmy);
      }  
    return null;
  }
  
  @Nullable
  private static String e(Context paramContext) {
    PackageManager packageManager = paramContext.getPackageManager();
    return (packageManager != null) ? packageManager.getInstallerPackageName(paramContext.getPackageName()) : null;
  }
  
  public String a() {
    return this.i;
  }
  
  public String b() {
    return this.j;
  }
  
  public String c() {
    return this.k;
  }
  
  public boolean d() {
    return this.l;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bmv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */