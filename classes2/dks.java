import android.content.Context;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzatd;

public class dks extends dmu {
  private String a;
  
  private String b;
  
  private int c;
  
  private String d;
  
  private String e;
  
  private long f;
  
  private long g;
  
  private String h;
  
  dks(dlv paramdlv) {
    super(paramdlv);
  }
  
  int A() {
    R();
    return this.c;
  }
  
  String B() {
    R();
    return this.d;
  }
  
  long C() {
    return w().U();
  }
  
  @WorkerThread
  long D() {
    R();
    e();
    if (this.f == 0L)
      this.f = this.n.o().b(n(), n().getPackageName()); 
    return this.f;
  }
  
  long E() {
    R();
    return 0L;
  }
  
  @WorkerThread
  zzatd a(String paramString) {
    e();
    String str1 = x();
    String str2 = y();
    String str3 = z();
    long l1 = A();
    String str4 = B();
    long l2 = C();
    long l3 = D();
    boolean bool1 = this.n.G();
    if (!(v()).m) {
      boolean bool2 = true;
      return new zzatd(str1, str2, str3, l1, str4, l2, l3, paramString, bool1, bool2, v().y(), E());
    } 
    boolean bool = false;
    return new zzatd(str1, str2, str3, l1, str4, l2, l3, paramString, bool1, bool, v().y(), E());
  }
  
  protected void a() {
    // Byte code:
    //   0: ldc 'unknown'
    //   2: astore #4
    //   4: ldc 'Unknown'
    //   6: astore #8
    //   8: ldc -2147483648
    //   10: istore_2
    //   11: ldc 'Unknown'
    //   13: astore #5
    //   15: aload_0
    //   16: invokevirtual n : ()Landroid/content/Context;
    //   19: invokevirtual getPackageName : ()Ljava/lang/String;
    //   22: astore #9
    //   24: aload_0
    //   25: invokevirtual n : ()Landroid/content/Context;
    //   28: invokevirtual getPackageManager : ()Landroid/content/pm/PackageManager;
    //   31: astore #10
    //   33: aload #10
    //   35: ifnonnull -> 245
    //   38: aload_0
    //   39: invokevirtual u : ()Ldkw;
    //   42: invokevirtual x : ()Ldky;
    //   45: ldc 'PackageManager is null, app identity information might be inaccurate. appId'
    //   47: aload #9
    //   49: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   52: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   55: aload #4
    //   57: astore #7
    //   59: aload #8
    //   61: astore #6
    //   63: iload_2
    //   64: istore_1
    //   65: aload #5
    //   67: astore #4
    //   69: aload_0
    //   70: aload #9
    //   72: putfield a : Ljava/lang/String;
    //   75: aload_0
    //   76: aload #7
    //   78: putfield d : Ljava/lang/String;
    //   81: aload_0
    //   82: aload #6
    //   84: putfield b : Ljava/lang/String;
    //   87: aload_0
    //   88: iload_1
    //   89: putfield c : I
    //   92: aload_0
    //   93: aload #4
    //   95: putfield e : Ljava/lang/String;
    //   98: aload_0
    //   99: lconst_0
    //   100: putfield f : J
    //   103: aload_0
    //   104: invokevirtual w : ()Ldka;
    //   107: invokevirtual V : ()Z
    //   110: pop
    //   111: aload_0
    //   112: invokevirtual n : ()Landroid/content/Context;
    //   115: invokestatic a : (Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;
    //   118: astore_3
    //   119: aload_3
    //   120: ifnull -> 474
    //   123: aload_3
    //   124: invokevirtual e : ()Z
    //   127: ifeq -> 474
    //   130: iconst_1
    //   131: istore_1
    //   132: iload_1
    //   133: ifne -> 141
    //   136: aload_0
    //   137: aload_3
    //   138: invokevirtual a : (Lcom/google/android/gms/common/api/Status;)V
    //   141: iload_1
    //   142: ifeq -> 579
    //   145: aload_0
    //   146: invokevirtual w : ()Ldka;
    //   149: invokevirtual Y : ()Ljava/lang/Boolean;
    //   152: astore_3
    //   153: aload_0
    //   154: invokevirtual w : ()Ldka;
    //   157: invokevirtual X : ()Z
    //   160: ifeq -> 479
    //   163: aload_0
    //   164: invokevirtual u : ()Ldkw;
    //   167: invokevirtual B : ()Ldky;
    //   170: ldc 'Collection disabled with firebase_analytics_collection_deactivated=1'
    //   172: invokevirtual a : (Ljava/lang/String;)V
    //   175: iconst_0
    //   176: istore_1
    //   177: aload_0
    //   178: ldc ''
    //   180: putfield h : Ljava/lang/String;
    //   183: aload_0
    //   184: lconst_0
    //   185: putfield g : J
    //   188: aload_0
    //   189: invokevirtual w : ()Ldka;
    //   192: invokevirtual V : ()Z
    //   195: pop
    //   196: invokestatic a : ()Ljava/lang/String;
    //   199: astore #4
    //   201: aload #4
    //   203: astore_3
    //   204: aload #4
    //   206: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   209: ifeq -> 215
    //   212: ldc ''
    //   214: astore_3
    //   215: aload_0
    //   216: aload_3
    //   217: putfield h : Ljava/lang/String;
    //   220: iload_1
    //   221: ifeq -> 244
    //   224: aload_0
    //   225: invokevirtual u : ()Ldkw;
    //   228: invokevirtual D : ()Ldky;
    //   231: ldc 'App package, google app id'
    //   233: aload_0
    //   234: getfield a : Ljava/lang/String;
    //   237: aload_0
    //   238: getfield h : Ljava/lang/String;
    //   241: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   244: return
    //   245: aload #10
    //   247: aload #9
    //   249: invokevirtual getInstallerPackageName : (Ljava/lang/String;)Ljava/lang/String;
    //   252: astore_3
    //   253: aload_3
    //   254: astore #4
    //   256: aload #4
    //   258: ifnonnull -> 422
    //   261: ldc 'manual_install'
    //   263: astore_3
    //   264: aload #5
    //   266: astore #7
    //   268: aload #8
    //   270: astore #6
    //   272: aload #10
    //   274: aload_0
    //   275: invokevirtual n : ()Landroid/content/Context;
    //   278: invokevirtual getPackageName : ()Ljava/lang/String;
    //   281: iconst_0
    //   282: invokevirtual getPackageInfo : (Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   285: astore #11
    //   287: aload #5
    //   289: astore #4
    //   291: iload_2
    //   292: istore_1
    //   293: aload #8
    //   295: astore #6
    //   297: aload_3
    //   298: astore #7
    //   300: aload #11
    //   302: ifnull -> 69
    //   305: aload #5
    //   307: astore #7
    //   309: aload #8
    //   311: astore #6
    //   313: aload #10
    //   315: aload #11
    //   317: getfield applicationInfo : Landroid/content/pm/ApplicationInfo;
    //   320: invokevirtual getApplicationLabel : (Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    //   323: astore #10
    //   325: aload #5
    //   327: astore #4
    //   329: aload #5
    //   331: astore #7
    //   333: aload #8
    //   335: astore #6
    //   337: aload #10
    //   339: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   342: ifne -> 362
    //   345: aload #5
    //   347: astore #7
    //   349: aload #8
    //   351: astore #6
    //   353: aload #10
    //   355: invokeinterface toString : ()Ljava/lang/String;
    //   360: astore #4
    //   362: aload #4
    //   364: astore #7
    //   366: aload #8
    //   368: astore #6
    //   370: aload #11
    //   372: getfield versionName : Ljava/lang/String;
    //   375: astore #5
    //   377: aload #4
    //   379: astore #7
    //   381: aload #5
    //   383: astore #6
    //   385: aload #11
    //   387: getfield versionCode : I
    //   390: istore_1
    //   391: aload #5
    //   393: astore #6
    //   395: aload_3
    //   396: astore #7
    //   398: goto -> 69
    //   401: astore_3
    //   402: aload_0
    //   403: invokevirtual u : ()Ldkw;
    //   406: invokevirtual x : ()Ldky;
    //   409: ldc 'Error retrieving app installer package name. appId'
    //   411: aload #9
    //   413: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   416: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   419: goto -> 256
    //   422: aload #4
    //   424: astore_3
    //   425: ldc 'com.android.vending'
    //   427: aload #4
    //   429: invokevirtual equals : (Ljava/lang/Object;)Z
    //   432: ifeq -> 264
    //   435: ldc ''
    //   437: astore_3
    //   438: goto -> 264
    //   441: astore #4
    //   443: aload_0
    //   444: invokevirtual u : ()Ldkw;
    //   447: invokevirtual x : ()Ldky;
    //   450: ldc 'Error retrieving package info. appId, appName'
    //   452: aload #9
    //   454: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   457: aload #7
    //   459: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   462: aload #7
    //   464: astore #4
    //   466: iload_2
    //   467: istore_1
    //   468: aload_3
    //   469: astore #7
    //   471: goto -> 69
    //   474: iconst_0
    //   475: istore_1
    //   476: goto -> 132
    //   479: aload_3
    //   480: ifnull -> 508
    //   483: aload_3
    //   484: invokevirtual booleanValue : ()Z
    //   487: ifne -> 508
    //   490: aload_0
    //   491: invokevirtual u : ()Ldkw;
    //   494: invokevirtual B : ()Ldky;
    //   497: ldc_w 'Collection disabled with firebase_analytics_collection_enabled=0'
    //   500: invokevirtual a : (Ljava/lang/String;)V
    //   503: iconst_0
    //   504: istore_1
    //   505: goto -> 177
    //   508: aload_3
    //   509: ifnonnull -> 540
    //   512: aload_0
    //   513: invokevirtual w : ()Ldka;
    //   516: invokevirtual Z : ()Z
    //   519: ifeq -> 540
    //   522: aload_0
    //   523: invokevirtual u : ()Ldkw;
    //   526: invokevirtual B : ()Ldky;
    //   529: ldc_w 'Collection disabled with google_app_measurement_enable=0'
    //   532: invokevirtual a : (Ljava/lang/String;)V
    //   535: iconst_0
    //   536: istore_1
    //   537: goto -> 177
    //   540: aload_0
    //   541: invokevirtual u : ()Ldkw;
    //   544: invokevirtual D : ()Ldky;
    //   547: ldc_w 'Collection enabled'
    //   550: invokevirtual a : (Ljava/lang/String;)V
    //   553: iconst_1
    //   554: istore_1
    //   555: goto -> 177
    //   558: astore_3
    //   559: aload_0
    //   560: invokevirtual u : ()Ldkw;
    //   563: invokevirtual x : ()Ldky;
    //   566: ldc_w 'getGoogleAppId or isMeasurementEnabled failed with exception. appId'
    //   569: aload #9
    //   571: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   574: aload_3
    //   575: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   578: return
    //   579: iconst_0
    //   580: istore_1
    //   581: goto -> 177
    // Exception table:
    //   from	to	target	type
    //   196	201	558	java/lang/IllegalStateException
    //   204	212	558	java/lang/IllegalStateException
    //   215	220	558	java/lang/IllegalStateException
    //   224	244	558	java/lang/IllegalStateException
    //   245	253	401	java/lang/IllegalArgumentException
    //   272	287	441	android/content/pm/PackageManager$NameNotFoundException
    //   313	325	441	android/content/pm/PackageManager$NameNotFoundException
    //   337	345	441	android/content/pm/PackageManager$NameNotFoundException
    //   353	362	441	android/content/pm/PackageManager$NameNotFoundException
    //   370	377	441	android/content/pm/PackageManager$NameNotFoundException
    //   385	391	441	android/content/pm/PackageManager$NameNotFoundException
  }
  
  protected void a(Status paramStatus) {
    if (paramStatus == null) {
      u().x().a("GoogleService failed to initialize (no status)");
      return;
    } 
    u().x().a("GoogleService failed to initialize, status", Integer.valueOf(paramStatus.h()), paramStatus.c());
  }
  
  String x() {
    R();
    return this.a;
  }
  
  String y() {
    R();
    return this.h;
  }
  
  String z() {
    R();
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dks.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */