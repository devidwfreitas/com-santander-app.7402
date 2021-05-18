import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.support.annotation.NonNull;
import android.support.annotation.Size;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.zzatd;
import com.google.android.gms.internal.zzatg;
import com.google.android.gms.internal.zzato;
import com.google.android.gms.internal.zzatq;
import com.google.android.gms.internal.zzauq;
import com.google.android.gms.measurement.AppMeasurement;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class dlv {
  private static volatile dlv b;
  
  private boolean A;
  
  private Boolean B;
  
  private long C;
  
  private FileLock D;
  
  private FileChannel E;
  
  private List<Long> F;
  
  private int G;
  
  private int H;
  
  private long I;
  
  protected long a;
  
  private final Context c;
  
  private final dka d;
  
  private final dlh e;
  
  private final dkw f;
  
  private final dlq g;
  
  private final dok h;
  
  private final dlp i;
  
  private final AppMeasurement j;
  
  private final eif k;
  
  private final dou l;
  
  private final dkb m;
  
  private final dkt n;
  
  private final dla o;
  
  private final cvo p;
  
  private final dnk q;
  
  private final dno r;
  
  private final dkh s;
  
  private final dmw t;
  
  private final dks u;
  
  private final dlf v;
  
  private final doq w;
  
  private final djy x;
  
  private final djs y;
  
  private final boolean z;
  
  dlv(dmv paramdmv) {
    csp.a(paramdmv);
    this.c = paramdmv.a;
    this.I = -1L;
    this.p = paramdmv.n(this);
    this.d = paramdmv.a(this);
    dlh dlh1 = paramdmv.b(this);
    dlh1.S();
    this.e = dlh1;
    dkw dkw1 = paramdmv.c(this);
    dkw1.S();
    this.f = dkw1;
    f().B().a("App measurement is starting up, version", Long.valueOf(d().U()));
    d().V();
    f().B().a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
    dou dou1 = paramdmv.j(this);
    dou1.S();
    this.l = dou1;
    dkh dkh1 = paramdmv.q(this);
    dkh1.S();
    this.s = dkh1;
    dks dks1 = paramdmv.r(this);
    dks1.S();
    this.u = dks1;
    d().V();
    String str = dks1.x();
    if (o().m(str)) {
      f().B().a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
    } else {
      dky dky = f().B();
      str = String.valueOf(str);
      if (str.length() != 0) {
        str = "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(str);
      } else {
        str = new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ");
      } 
      dky.a(str);
    } 
    f().C().a("Debug-level message logging enabled");
    dkb dkb1 = paramdmv.k(this);
    dkb1.S();
    this.m = dkb1;
    dkt dkt1 = paramdmv.l(this);
    dkt1.S();
    this.n = dkt1;
    djy djy1 = paramdmv.u(this);
    djy1.S();
    this.x = djy1;
    this.y = paramdmv.v(this);
    dla dla1 = paramdmv.m(this);
    dla1.S();
    this.o = dla1;
    dnk dnk1 = paramdmv.o(this);
    dnk1.S();
    this.q = dnk1;
    dno dno1 = paramdmv.p(this);
    dno1.S();
    this.r = dno1;
    dmw dmw1 = paramdmv.i(this);
    dmw1.S();
    this.t = dmw1;
    doq doq1 = paramdmv.t(this);
    doq1.S();
    this.w = doq1;
    this.v = paramdmv.s(this);
    this.j = paramdmv.h(this);
    this.k = paramdmv.g(this);
    dok dok1 = paramdmv.e(this);
    dok1.S();
    this.h = dok1;
    dlp dlp1 = paramdmv.f(this);
    dlp1.S();
    this.i = dlp1;
    dlq dlq1 = paramdmv.d(this);
    dlq1.S();
    this.g = dlq1;
    if (this.G != this.H)
      f().x().a("Not all components initialized", Integer.valueOf(this.G), Integer.valueOf(this.H)); 
    this.z = true;
    this.d.V();
    if (this.c.getApplicationContext() instanceof android.app.Application) {
      int i = Build.VERSION.SDK_INT;
      l().x();
    } else {
      f().z().a("Application context is not an Application");
    } 
    this.g.a(new dlw(this));
  }
  
  private boolean P() {
    C();
    a();
    return (p().I() || !TextUtils.isEmpty(p().C()));
  }
  
  @WorkerThread
  private void Q() {
    C();
    a();
    if (!O())
      return; 
    if (this.a > 0L) {
      long l = 3600000L - Math.abs(t().b() - this.a);
      if (l > 0L) {
        f().D().a("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(l));
        y().b();
        z().x();
        return;
      } 
      this.a = 0L;
    } 
    if (!b() || !P()) {
      y().b();
      z().x();
      return;
    } 
    long l2 = R();
    if (l2 == 0L) {
      y().b();
      z().x();
      return;
    } 
    if (!r().x()) {
      y().a();
      z().x();
      return;
    } 
    long l3 = (e()).e.a();
    long l4 = d().ak();
    long l1 = l2;
    if (!o().a(l3, l4))
      l1 = Math.max(l2, l3 + l4); 
    y().b();
    l2 = l1 - t().a();
    l1 = l2;
    if (l2 <= 0L) {
      l1 = d().ao();
      (e()).c.a(t().a());
    } 
    f().D().a("Upload scheduled in approximately ms", Long.valueOf(l1));
    z().a(l1);
  }
  
  private long R() {
    int i;
    long l3 = t().a();
    long l1 = d().ar();
    if (p().J() || p().D()) {
      i = 1;
    } else {
      i = 0;
    } 
    if (i) {
      String str = d().au();
      if (!TextUtils.isEmpty(str) && !".none.".equals(str)) {
        long l = d().an();
      } else {
        long l = d().am();
      } 
    } else {
      long l = d().al();
    } 
    long l6 = (e()).c.a();
    long l5 = (e()).d.a();
    long l4 = Math.max(p().G(), p().H());
    if (l4 == 0L)
      return 0L; 
    l4 = l3 - Math.abs(l4 - l3);
    l6 = Math.abs(l6 - l3);
    l5 = l3 - Math.abs(l5 - l3);
    l6 = Math.max(l3 - l6, l5);
    l3 = l4 + l1;
    l1 = l3;
    if (i) {
      l1 = l3;
      if (l6 > 0L)
        l1 = Math.min(l4, l6) + SYNTHETIC_LOCAL_VARIABLE_4; 
    } 
    if (!o().a(l6, SYNTHETIC_LOCAL_VARIABLE_4))
      l1 = l6 + SYNTHETIC_LOCAL_VARIABLE_4; 
    long l2 = l1;
    if (l5 != 0L) {
      l2 = l1;
      if (l5 >= l4) {
        i = 0;
        while (i < d().at()) {
          l1 += (1 << i) * d().as();
          l2 = l1;
          if (l1 <= l5) {
            i++;
            continue;
          } 
          return l2;
        } 
        return 0L;
      } 
    } 
    return l2;
  }
  
  public static dlv a(Context paramContext) {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic a : (Ljava/lang/Object;)Ljava/lang/Object;
    //   4: pop
    //   5: aload_0
    //   6: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   9: invokestatic a : (Ljava/lang/Object;)Ljava/lang/Object;
    //   12: pop
    //   13: getstatic dlv.b : Ldlv;
    //   16: ifnonnull -> 45
    //   19: ldc dlv
    //   21: monitorenter
    //   22: getstatic dlv.b : Ldlv;
    //   25: ifnonnull -> 42
    //   28: new dmv
    //   31: dup
    //   32: aload_0
    //   33: invokespecial <init> : (Landroid/content/Context;)V
    //   36: invokevirtual a : ()Ldlv;
    //   39: putstatic dlv.b : Ldlv;
    //   42: ldc dlv
    //   44: monitorexit
    //   45: getstatic dlv.b : Ldlv;
    //   48: areturn
    //   49: astore_0
    //   50: ldc dlv
    //   52: monitorexit
    //   53: aload_0
    //   54: athrow
    // Exception table:
    //   from	to	target	type
    //   22	42	49	finally
    //   42	45	49	finally
    //   50	53	49	finally
  }
  
  private void a(dmt paramdmt) {
    if (paramdmt == null)
      throw new IllegalStateException("Component not created"); 
  }
  
  private boolean a(dki paramdki) {
    if (paramdki.f != null) {
      Iterator<String> iterator = paramdki.f.iterator();
      while (iterator.hasNext()) {
        if ("_r".equals(iterator.next()))
          return true; 
      } 
      boolean bool = j().c(paramdki.a, paramdki.b);
      dkc dkc = p().a(H(), paramdki.a, false, false, false, false, false);
      if (bool && dkc.e < d().c(paramdki.a))
        return true; 
    } 
    return false;
  }
  
  private boolean a(String paramString, long paramLong) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual p : ()Ldkb;
    //   4: invokevirtual x : ()V
    //   7: new dma
    //   10: dup
    //   11: aload_0
    //   12: aconst_null
    //   13: invokespecial <init> : (Ldlv;Ldlw;)V
    //   16: astore #16
    //   18: aload_0
    //   19: invokevirtual p : ()Ldkb;
    //   22: aload_1
    //   23: lload_2
    //   24: aload_0
    //   25: getfield I : J
    //   28: aload #16
    //   30: invokevirtual a : (Ljava/lang/String;JJLdkd;)V
    //   33: aload #16
    //   35: invokevirtual a : ()Z
    //   38: ifne -> 1801
    //   41: iconst_0
    //   42: istore #12
    //   44: aload #16
    //   46: getfield a : Ldpl;
    //   49: astore #17
    //   51: aload #17
    //   53: aload #16
    //   55: getfield c : Ljava/util/List;
    //   58: invokeinterface size : ()I
    //   63: anewarray dpi
    //   66: putfield b : [Ldpi;
    //   69: iconst_0
    //   70: istore #4
    //   72: iconst_0
    //   73: istore #6
    //   75: iload #6
    //   77: aload #16
    //   79: getfield c : Ljava/util/List;
    //   82: invokeinterface size : ()I
    //   87: if_icmpge -> 1260
    //   90: aload_0
    //   91: invokevirtual j : ()Ldlp;
    //   94: aload #16
    //   96: getfield a : Ldpl;
    //   99: getfield o : Ljava/lang/String;
    //   102: aload #16
    //   104: getfield c : Ljava/util/List;
    //   107: iload #6
    //   109: invokeinterface get : (I)Ljava/lang/Object;
    //   114: checkcast dpi
    //   117: getfield b : Ljava/lang/String;
    //   120: invokevirtual b : (Ljava/lang/String;Ljava/lang/String;)Z
    //   123: ifeq -> 273
    //   126: aload_0
    //   127: invokevirtual f : ()Ldkw;
    //   130: invokevirtual z : ()Ldky;
    //   133: ldc_w 'Dropping blacklisted raw event. appId'
    //   136: aload #16
    //   138: getfield a : Ldpl;
    //   141: getfield o : Ljava/lang/String;
    //   144: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   147: aload #16
    //   149: getfield c : Ljava/util/List;
    //   152: iload #6
    //   154: invokeinterface get : (I)Ljava/lang/Object;
    //   159: checkcast dpi
    //   162: getfield b : Ljava/lang/String;
    //   165: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   168: aload_0
    //   169: invokevirtual o : ()Ldou;
    //   172: aload #16
    //   174: getfield a : Ldpl;
    //   177: getfield o : Ljava/lang/String;
    //   180: invokevirtual o : (Ljava/lang/String;)Z
    //   183: ifne -> 1838
    //   186: aload_0
    //   187: invokevirtual o : ()Ldou;
    //   190: aload #16
    //   192: getfield a : Ldpl;
    //   195: getfield o : Ljava/lang/String;
    //   198: invokevirtual p : (Ljava/lang/String;)Z
    //   201: ifeq -> 1853
    //   204: goto -> 1838
    //   207: iload #5
    //   209: ifne -> 1835
    //   212: ldc_w '_err'
    //   215: aload #16
    //   217: getfield c : Ljava/util/List;
    //   220: iload #6
    //   222: invokeinterface get : (I)Ljava/lang/Object;
    //   227: checkcast dpi
    //   230: getfield b : Ljava/lang/String;
    //   233: invokevirtual equals : (Ljava/lang/Object;)Z
    //   236: ifne -> 1835
    //   239: aload_0
    //   240: invokevirtual o : ()Ldou;
    //   243: bipush #11
    //   245: ldc_w '_ev'
    //   248: aload #16
    //   250: getfield c : Ljava/util/List;
    //   253: iload #6
    //   255: invokeinterface get : (I)Ljava/lang/Object;
    //   260: checkcast dpi
    //   263: getfield b : Ljava/lang/String;
    //   266: iconst_0
    //   267: invokevirtual a : (ILjava/lang/String;Ljava/lang/String;I)V
    //   270: goto -> 1844
    //   273: aload_0
    //   274: invokevirtual j : ()Ldlp;
    //   277: aload #16
    //   279: getfield a : Ldpl;
    //   282: getfield o : Ljava/lang/String;
    //   285: aload #16
    //   287: getfield c : Ljava/util/List;
    //   290: iload #6
    //   292: invokeinterface get : (I)Ljava/lang/Object;
    //   297: checkcast dpi
    //   300: getfield b : Ljava/lang/String;
    //   303: invokevirtual c : (Ljava/lang/String;Ljava/lang/String;)Z
    //   306: istore #14
    //   308: iload #14
    //   310: ifne -> 341
    //   313: aload_0
    //   314: invokevirtual o : ()Ldou;
    //   317: aload #16
    //   319: getfield c : Ljava/util/List;
    //   322: iload #6
    //   324: invokeinterface get : (I)Ljava/lang/Object;
    //   329: checkcast dpi
    //   332: getfield b : Ljava/lang/String;
    //   335: invokevirtual q : (Ljava/lang/String;)Z
    //   338: ifeq -> 1832
    //   341: iconst_0
    //   342: istore #8
    //   344: iconst_0
    //   345: istore #5
    //   347: aload #16
    //   349: getfield c : Ljava/util/List;
    //   352: iload #6
    //   354: invokeinterface get : (I)Ljava/lang/Object;
    //   359: checkcast dpi
    //   362: getfield a : [Ldpj;
    //   365: ifnonnull -> 390
    //   368: aload #16
    //   370: getfield c : Ljava/util/List;
    //   373: iload #6
    //   375: invokeinterface get : (I)Ljava/lang/Object;
    //   380: checkcast dpi
    //   383: iconst_0
    //   384: anewarray dpj
    //   387: putfield a : [Ldpj;
    //   390: aload #16
    //   392: getfield c : Ljava/util/List;
    //   395: iload #6
    //   397: invokeinterface get : (I)Ljava/lang/Object;
    //   402: checkcast dpi
    //   405: getfield a : [Ldpj;
    //   408: astore_1
    //   409: aload_1
    //   410: arraylength
    //   411: istore #9
    //   413: iconst_0
    //   414: istore #7
    //   416: iload #7
    //   418: iload #9
    //   420: if_icmpge -> 487
    //   423: aload_1
    //   424: iload #7
    //   426: aaload
    //   427: astore #15
    //   429: ldc_w '_c'
    //   432: aload #15
    //   434: getfield a : Ljava/lang/String;
    //   437: invokevirtual equals : (Ljava/lang/Object;)Z
    //   440: ifeq -> 458
    //   443: aload #15
    //   445: lconst_1
    //   446: invokestatic valueOf : (J)Ljava/lang/Long;
    //   449: putfield c : Ljava/lang/Long;
    //   452: iconst_1
    //   453: istore #8
    //   455: goto -> 1859
    //   458: ldc_w '_r'
    //   461: aload #15
    //   463: getfield a : Ljava/lang/String;
    //   466: invokevirtual equals : (Ljava/lang/Object;)Z
    //   469: ifeq -> 1829
    //   472: aload #15
    //   474: lconst_1
    //   475: invokestatic valueOf : (J)Ljava/lang/Long;
    //   478: putfield c : Ljava/lang/Long;
    //   481: iconst_1
    //   482: istore #5
    //   484: goto -> 1859
    //   487: iload #8
    //   489: ifne -> 627
    //   492: iload #14
    //   494: ifeq -> 627
    //   497: aload_0
    //   498: invokevirtual f : ()Ldkw;
    //   501: invokevirtual D : ()Ldky;
    //   504: ldc_w 'Marking event as conversion'
    //   507: aload #16
    //   509: getfield c : Ljava/util/List;
    //   512: iload #6
    //   514: invokeinterface get : (I)Ljava/lang/Object;
    //   519: checkcast dpi
    //   522: getfield b : Ljava/lang/String;
    //   525: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   528: aload #16
    //   530: getfield c : Ljava/util/List;
    //   533: iload #6
    //   535: invokeinterface get : (I)Ljava/lang/Object;
    //   540: checkcast dpi
    //   543: getfield a : [Ldpj;
    //   546: aload #16
    //   548: getfield c : Ljava/util/List;
    //   551: iload #6
    //   553: invokeinterface get : (I)Ljava/lang/Object;
    //   558: checkcast dpi
    //   561: getfield a : [Ldpj;
    //   564: arraylength
    //   565: iconst_1
    //   566: iadd
    //   567: invokestatic copyOf : ([Ljava/lang/Object;I)[Ljava/lang/Object;
    //   570: checkcast [Ldpj;
    //   573: astore_1
    //   574: new dpj
    //   577: dup
    //   578: invokespecial <init> : ()V
    //   581: astore #15
    //   583: aload #15
    //   585: ldc_w '_c'
    //   588: putfield a : Ljava/lang/String;
    //   591: aload #15
    //   593: lconst_1
    //   594: invokestatic valueOf : (J)Ljava/lang/Long;
    //   597: putfield c : Ljava/lang/Long;
    //   600: aload_1
    //   601: aload_1
    //   602: arraylength
    //   603: iconst_1
    //   604: isub
    //   605: aload #15
    //   607: aastore
    //   608: aload #16
    //   610: getfield c : Ljava/util/List;
    //   613: iload #6
    //   615: invokeinterface get : (I)Ljava/lang/Object;
    //   620: checkcast dpi
    //   623: aload_1
    //   624: putfield a : [Ldpj;
    //   627: iload #5
    //   629: ifne -> 762
    //   632: aload_0
    //   633: invokevirtual f : ()Ldkw;
    //   636: invokevirtual D : ()Ldky;
    //   639: ldc_w 'Marking event as real-time'
    //   642: aload #16
    //   644: getfield c : Ljava/util/List;
    //   647: iload #6
    //   649: invokeinterface get : (I)Ljava/lang/Object;
    //   654: checkcast dpi
    //   657: getfield b : Ljava/lang/String;
    //   660: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   663: aload #16
    //   665: getfield c : Ljava/util/List;
    //   668: iload #6
    //   670: invokeinterface get : (I)Ljava/lang/Object;
    //   675: checkcast dpi
    //   678: getfield a : [Ldpj;
    //   681: aload #16
    //   683: getfield c : Ljava/util/List;
    //   686: iload #6
    //   688: invokeinterface get : (I)Ljava/lang/Object;
    //   693: checkcast dpi
    //   696: getfield a : [Ldpj;
    //   699: arraylength
    //   700: iconst_1
    //   701: iadd
    //   702: invokestatic copyOf : ([Ljava/lang/Object;I)[Ljava/lang/Object;
    //   705: checkcast [Ldpj;
    //   708: astore_1
    //   709: new dpj
    //   712: dup
    //   713: invokespecial <init> : ()V
    //   716: astore #15
    //   718: aload #15
    //   720: ldc_w '_r'
    //   723: putfield a : Ljava/lang/String;
    //   726: aload #15
    //   728: lconst_1
    //   729: invokestatic valueOf : (J)Ljava/lang/Long;
    //   732: putfield c : Ljava/lang/Long;
    //   735: aload_1
    //   736: aload_1
    //   737: arraylength
    //   738: iconst_1
    //   739: isub
    //   740: aload #15
    //   742: aastore
    //   743: aload #16
    //   745: getfield c : Ljava/util/List;
    //   748: iload #6
    //   750: invokeinterface get : (I)Ljava/lang/Object;
    //   755: checkcast dpi
    //   758: aload_1
    //   759: putfield a : [Ldpj;
    //   762: iconst_1
    //   763: istore #13
    //   765: aload_0
    //   766: invokevirtual p : ()Ldkb;
    //   769: aload_0
    //   770: invokevirtual H : ()J
    //   773: aload #16
    //   775: getfield a : Ldpl;
    //   778: getfield o : Ljava/lang/String;
    //   781: iconst_0
    //   782: iconst_0
    //   783: iconst_0
    //   784: iconst_0
    //   785: iconst_1
    //   786: invokevirtual a : (JLjava/lang/String;ZZZZZ)Ldkc;
    //   789: getfield e : J
    //   792: aload_0
    //   793: invokevirtual d : ()Ldka;
    //   796: aload #16
    //   798: getfield a : Ldpl;
    //   801: getfield o : Ljava/lang/String;
    //   804: invokevirtual c : (Ljava/lang/String;)I
    //   807: i2l
    //   808: lcmp
    //   809: ifle -> 928
    //   812: aload #16
    //   814: getfield c : Ljava/util/List;
    //   817: iload #6
    //   819: invokeinterface get : (I)Ljava/lang/Object;
    //   824: checkcast dpi
    //   827: astore_1
    //   828: iconst_0
    //   829: istore #5
    //   831: iload #5
    //   833: aload_1
    //   834: getfield a : [Ldpj;
    //   837: arraylength
    //   838: if_icmpge -> 1868
    //   841: ldc_w '_r'
    //   844: aload_1
    //   845: getfield a : [Ldpj;
    //   848: iload #5
    //   850: aaload
    //   851: getfield a : Ljava/lang/String;
    //   854: invokevirtual equals : (Ljava/lang/Object;)Z
    //   857: ifeq -> 1884
    //   860: aload_1
    //   861: getfield a : [Ldpj;
    //   864: arraylength
    //   865: iconst_1
    //   866: isub
    //   867: anewarray dpj
    //   870: astore #15
    //   872: iload #5
    //   874: ifle -> 890
    //   877: aload_1
    //   878: getfield a : [Ldpj;
    //   881: iconst_0
    //   882: aload #15
    //   884: iconst_0
    //   885: iload #5
    //   887: invokestatic arraycopy : (Ljava/lang/Object;ILjava/lang/Object;II)V
    //   890: iload #5
    //   892: aload #15
    //   894: arraylength
    //   895: if_icmpge -> 919
    //   898: aload_1
    //   899: getfield a : [Ldpj;
    //   902: iload #5
    //   904: iconst_1
    //   905: iadd
    //   906: aload #15
    //   908: iload #5
    //   910: aload #15
    //   912: arraylength
    //   913: iload #5
    //   915: isub
    //   916: invokestatic arraycopy : (Ljava/lang/Object;ILjava/lang/Object;II)V
    //   919: aload_1
    //   920: aload #15
    //   922: putfield a : [Ldpj;
    //   925: goto -> 1868
    //   928: aload #16
    //   930: getfield c : Ljava/util/List;
    //   933: iload #6
    //   935: invokeinterface get : (I)Ljava/lang/Object;
    //   940: checkcast dpi
    //   943: getfield b : Ljava/lang/String;
    //   946: invokestatic a : (Ljava/lang/String;)Z
    //   949: ifeq -> 1939
    //   952: iload #14
    //   954: ifeq -> 1939
    //   957: aload_0
    //   958: invokevirtual p : ()Ldkb;
    //   961: aload_0
    //   962: invokevirtual H : ()J
    //   965: aload #16
    //   967: getfield a : Ldpl;
    //   970: getfield o : Ljava/lang/String;
    //   973: iconst_0
    //   974: iconst_0
    //   975: iconst_1
    //   976: iconst_0
    //   977: iconst_0
    //   978: invokevirtual a : (JLjava/lang/String;ZZZZZ)Ldkc;
    //   981: getfield c : J
    //   984: aload_0
    //   985: invokevirtual d : ()Ldka;
    //   988: aload #16
    //   990: getfield a : Ldpl;
    //   993: getfield o : Ljava/lang/String;
    //   996: invokevirtual b : (Ljava/lang/String;)I
    //   999: i2l
    //   1000: lcmp
    //   1001: ifle -> 1939
    //   1004: aload_0
    //   1005: invokevirtual f : ()Ldkw;
    //   1008: invokevirtual z : ()Ldky;
    //   1011: ldc_w 'Too many conversions. Not logging as conversion. appId'
    //   1014: aload #16
    //   1016: getfield a : Ldpl;
    //   1019: getfield o : Ljava/lang/String;
    //   1022: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   1025: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   1028: aload #16
    //   1030: getfield c : Ljava/util/List;
    //   1033: iload #6
    //   1035: invokeinterface get : (I)Ljava/lang/Object;
    //   1040: checkcast dpi
    //   1043: astore #18
    //   1045: iconst_0
    //   1046: istore #5
    //   1048: aconst_null
    //   1049: astore_1
    //   1050: aload #18
    //   1052: getfield a : [Ldpj;
    //   1055: astore #19
    //   1057: aload #19
    //   1059: arraylength
    //   1060: istore #8
    //   1062: iconst_0
    //   1063: istore #7
    //   1065: iload #7
    //   1067: iload #8
    //   1069: if_icmpge -> 1119
    //   1072: aload #19
    //   1074: iload #7
    //   1076: aaload
    //   1077: astore #15
    //   1079: ldc_w '_c'
    //   1082: aload #15
    //   1084: getfield a : Ljava/lang/String;
    //   1087: invokevirtual equals : (Ljava/lang/Object;)Z
    //   1090: ifeq -> 1099
    //   1093: aload #15
    //   1095: astore_1
    //   1096: goto -> 1875
    //   1099: ldc_w '_err'
    //   1102: aload #15
    //   1104: getfield a : Ljava/lang/String;
    //   1107: invokevirtual equals : (Ljava/lang/Object;)Z
    //   1110: ifeq -> 1826
    //   1113: iconst_1
    //   1114: istore #5
    //   1116: goto -> 1875
    //   1119: iload #5
    //   1121: ifeq -> 1205
    //   1124: aload_1
    //   1125: ifnull -> 1205
    //   1128: aload #18
    //   1130: getfield a : [Ldpj;
    //   1133: arraylength
    //   1134: iconst_1
    //   1135: isub
    //   1136: anewarray dpj
    //   1139: astore #15
    //   1141: iconst_0
    //   1142: istore #5
    //   1144: aload #18
    //   1146: getfield a : [Ldpj;
    //   1149: astore #19
    //   1151: aload #19
    //   1153: arraylength
    //   1154: istore #9
    //   1156: iconst_0
    //   1157: istore #7
    //   1159: goto -> 1893
    //   1162: aload #18
    //   1164: aload #15
    //   1166: putfield a : [Ldpj;
    //   1169: iload #13
    //   1171: istore #12
    //   1173: aload #17
    //   1175: getfield b : [Ldpi;
    //   1178: iload #4
    //   1180: aload #16
    //   1182: getfield c : Ljava/util/List;
    //   1185: iload #6
    //   1187: invokeinterface get : (I)Ljava/lang/Object;
    //   1192: checkcast dpi
    //   1195: aastore
    //   1196: iload #4
    //   1198: iconst_1
    //   1199: iadd
    //   1200: istore #4
    //   1202: goto -> 1844
    //   1205: aload_1
    //   1206: ifnull -> 1233
    //   1209: aload_1
    //   1210: ldc_w '_err'
    //   1213: putfield a : Ljava/lang/String;
    //   1216: aload_1
    //   1217: ldc2_w 10
    //   1220: invokestatic valueOf : (J)Ljava/lang/Long;
    //   1223: putfield c : Ljava/lang/Long;
    //   1226: iload #13
    //   1228: istore #12
    //   1230: goto -> 1173
    //   1233: aload_0
    //   1234: invokevirtual f : ()Ldkw;
    //   1237: invokevirtual x : ()Ldky;
    //   1240: ldc_w 'Did not find conversion parameter. appId'
    //   1243: aload #16
    //   1245: getfield a : Ldpl;
    //   1248: getfield o : Ljava/lang/String;
    //   1251: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   1254: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   1257: goto -> 1939
    //   1260: iload #4
    //   1262: aload #16
    //   1264: getfield c : Ljava/util/List;
    //   1267: invokeinterface size : ()I
    //   1272: if_icmpge -> 1293
    //   1275: aload #17
    //   1277: aload #17
    //   1279: getfield b : [Ldpi;
    //   1282: iload #4
    //   1284: invokestatic copyOf : ([Ljava/lang/Object;I)[Ljava/lang/Object;
    //   1287: checkcast [Ldpi;
    //   1290: putfield b : [Ldpi;
    //   1293: aload #17
    //   1295: aload_0
    //   1296: aload #16
    //   1298: getfield a : Ldpl;
    //   1301: getfield o : Ljava/lang/String;
    //   1304: aload #16
    //   1306: getfield a : Ldpl;
    //   1309: getfield c : [Ldpn;
    //   1312: aload #17
    //   1314: getfield b : [Ldpi;
    //   1317: invokespecial a : (Ljava/lang/String;[Ldpn;[Ldpi;)[Ldph;
    //   1320: putfield A : [Ldph;
    //   1323: aload #17
    //   1325: ldc2_w 9223372036854775807
    //   1328: invokestatic valueOf : (J)Ljava/lang/Long;
    //   1331: putfield e : Ljava/lang/Long;
    //   1334: aload #17
    //   1336: ldc2_w -9223372036854775808
    //   1339: invokestatic valueOf : (J)Ljava/lang/Long;
    //   1342: putfield f : Ljava/lang/Long;
    //   1345: iconst_0
    //   1346: istore #4
    //   1348: iload #4
    //   1350: aload #17
    //   1352: getfield b : [Ldpi;
    //   1355: arraylength
    //   1356: if_icmpge -> 1427
    //   1359: aload #17
    //   1361: getfield b : [Ldpi;
    //   1364: iload #4
    //   1366: aaload
    //   1367: astore_1
    //   1368: aload_1
    //   1369: getfield c : Ljava/lang/Long;
    //   1372: invokevirtual longValue : ()J
    //   1375: aload #17
    //   1377: getfield e : Ljava/lang/Long;
    //   1380: invokevirtual longValue : ()J
    //   1383: lcmp
    //   1384: ifge -> 1396
    //   1387: aload #17
    //   1389: aload_1
    //   1390: getfield c : Ljava/lang/Long;
    //   1393: putfield e : Ljava/lang/Long;
    //   1396: aload_1
    //   1397: getfield c : Ljava/lang/Long;
    //   1400: invokevirtual longValue : ()J
    //   1403: aload #17
    //   1405: getfield f : Ljava/lang/Long;
    //   1408: invokevirtual longValue : ()J
    //   1411: lcmp
    //   1412: ifle -> 1946
    //   1415: aload #17
    //   1417: aload_1
    //   1418: getfield c : Ljava/lang/Long;
    //   1421: putfield f : Ljava/lang/Long;
    //   1424: goto -> 1946
    //   1427: aload #16
    //   1429: getfield a : Ldpl;
    //   1432: getfield o : Ljava/lang/String;
    //   1435: astore #15
    //   1437: aload_0
    //   1438: invokevirtual p : ()Ldkb;
    //   1441: aload #15
    //   1443: invokevirtual b : (Ljava/lang/String;)Ldjw;
    //   1446: astore #18
    //   1448: aload #18
    //   1450: ifnonnull -> 1612
    //   1453: aload_0
    //   1454: invokevirtual f : ()Ldkw;
    //   1457: invokevirtual x : ()Ldky;
    //   1460: ldc_w 'Bundling raw events w/o app info. appId'
    //   1463: aload #16
    //   1465: getfield a : Ldpl;
    //   1468: getfield o : Ljava/lang/String;
    //   1471: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   1474: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   1477: aload #17
    //   1479: getfield b : [Ldpi;
    //   1482: arraylength
    //   1483: ifle -> 1558
    //   1486: aload_0
    //   1487: invokevirtual d : ()Ldka;
    //   1490: invokevirtual V : ()Z
    //   1493: pop
    //   1494: aload_0
    //   1495: invokevirtual j : ()Ldlp;
    //   1498: aload #16
    //   1500: getfield a : Ldpl;
    //   1503: getfield o : Ljava/lang/String;
    //   1506: invokevirtual a : (Ljava/lang/String;)Ldpe;
    //   1509: astore_1
    //   1510: aload_1
    //   1511: ifnull -> 1521
    //   1514: aload_1
    //   1515: getfield a : Ljava/lang/Long;
    //   1518: ifnonnull -> 1789
    //   1521: aload #16
    //   1523: getfield a : Ldpl;
    //   1526: getfield y : Ljava/lang/String;
    //   1529: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   1532: ifeq -> 1762
    //   1535: aload #17
    //   1537: ldc2_w -1
    //   1540: invokestatic valueOf : (J)Ljava/lang/Long;
    //   1543: putfield G : Ljava/lang/Long;
    //   1546: aload_0
    //   1547: invokevirtual p : ()Ldkb;
    //   1550: aload #17
    //   1552: iload #12
    //   1554: invokevirtual a : (Ldpl;Z)Z
    //   1557: pop
    //   1558: aload_0
    //   1559: invokevirtual p : ()Ldkb;
    //   1562: aload #16
    //   1564: getfield b : Ljava/util/List;
    //   1567: invokevirtual a : (Ljava/util/List;)V
    //   1570: aload_0
    //   1571: invokevirtual p : ()Ldkb;
    //   1574: aload #15
    //   1576: invokevirtual i : (Ljava/lang/String;)V
    //   1579: aload_0
    //   1580: invokevirtual p : ()Ldkb;
    //   1583: invokevirtual y : ()V
    //   1586: aload #17
    //   1588: getfield b : [Ldpi;
    //   1591: arraylength
    //   1592: istore #4
    //   1594: iload #4
    //   1596: ifle -> 1955
    //   1599: iconst_1
    //   1600: istore #12
    //   1602: aload_0
    //   1603: invokevirtual p : ()Ldkb;
    //   1606: invokevirtual z : ()V
    //   1609: iload #12
    //   1611: ireturn
    //   1612: aload #17
    //   1614: getfield b : [Ldpi;
    //   1617: arraylength
    //   1618: ifle -> 1477
    //   1621: aload #18
    //   1623: invokevirtual h : ()J
    //   1626: lstore_2
    //   1627: lload_2
    //   1628: lconst_0
    //   1629: lcmp
    //   1630: ifeq -> 1752
    //   1633: lload_2
    //   1634: invokestatic valueOf : (J)Ljava/lang/Long;
    //   1637: astore_1
    //   1638: aload #17
    //   1640: aload_1
    //   1641: putfield h : Ljava/lang/Long;
    //   1644: aload #18
    //   1646: invokevirtual g : ()J
    //   1649: lstore #10
    //   1651: lload #10
    //   1653: lconst_0
    //   1654: lcmp
    //   1655: ifne -> 1817
    //   1658: lload_2
    //   1659: lconst_0
    //   1660: lcmp
    //   1661: ifeq -> 1757
    //   1664: lload_2
    //   1665: invokestatic valueOf : (J)Ljava/lang/Long;
    //   1668: astore_1
    //   1669: aload #17
    //   1671: aload_1
    //   1672: putfield g : Ljava/lang/Long;
    //   1675: aload #18
    //   1677: invokevirtual r : ()V
    //   1680: aload #17
    //   1682: aload #18
    //   1684: invokevirtual o : ()J
    //   1687: l2i
    //   1688: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   1691: putfield w : Ljava/lang/Integer;
    //   1694: aload #18
    //   1696: aload #17
    //   1698: getfield e : Ljava/lang/Long;
    //   1701: invokevirtual longValue : ()J
    //   1704: invokevirtual a : (J)V
    //   1707: aload #18
    //   1709: aload #17
    //   1711: getfield f : Ljava/lang/Long;
    //   1714: invokevirtual longValue : ()J
    //   1717: invokevirtual b : (J)V
    //   1720: aload #17
    //   1722: aload #18
    //   1724: invokevirtual z : ()Ljava/lang/String;
    //   1727: putfield x : Ljava/lang/String;
    //   1730: aload_0
    //   1731: invokevirtual p : ()Ldkb;
    //   1734: aload #18
    //   1736: invokevirtual a : (Ldjw;)V
    //   1739: goto -> 1477
    //   1742: astore_1
    //   1743: aload_0
    //   1744: invokevirtual p : ()Ldkb;
    //   1747: invokevirtual z : ()V
    //   1750: aload_1
    //   1751: athrow
    //   1752: aconst_null
    //   1753: astore_1
    //   1754: goto -> 1638
    //   1757: aconst_null
    //   1758: astore_1
    //   1759: goto -> 1669
    //   1762: aload_0
    //   1763: invokevirtual f : ()Ldkw;
    //   1766: invokevirtual z : ()Ldky;
    //   1769: ldc_w 'Did not find measurement config or missing version info. appId'
    //   1772: aload #16
    //   1774: getfield a : Ldpl;
    //   1777: getfield o : Ljava/lang/String;
    //   1780: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   1783: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   1786: goto -> 1546
    //   1789: aload #17
    //   1791: aload_1
    //   1792: getfield a : Ljava/lang/Long;
    //   1795: putfield G : Ljava/lang/Long;
    //   1798: goto -> 1546
    //   1801: aload_0
    //   1802: invokevirtual p : ()Ldkb;
    //   1805: invokevirtual y : ()V
    //   1808: aload_0
    //   1809: invokevirtual p : ()Ldkb;
    //   1812: invokevirtual z : ()V
    //   1815: iconst_0
    //   1816: ireturn
    //   1817: lload #10
    //   1819: lstore_2
    //   1820: goto -> 1658
    //   1823: goto -> 1930
    //   1826: goto -> 1875
    //   1829: goto -> 1859
    //   1832: goto -> 1173
    //   1835: goto -> 1844
    //   1838: iconst_1
    //   1839: istore #5
    //   1841: goto -> 207
    //   1844: iload #6
    //   1846: iconst_1
    //   1847: iadd
    //   1848: istore #6
    //   1850: goto -> 75
    //   1853: iconst_0
    //   1854: istore #5
    //   1856: goto -> 207
    //   1859: iload #7
    //   1861: iconst_1
    //   1862: iadd
    //   1863: istore #7
    //   1865: goto -> 416
    //   1868: iload #12
    //   1870: istore #13
    //   1872: goto -> 928
    //   1875: iload #7
    //   1877: iconst_1
    //   1878: iadd
    //   1879: istore #7
    //   1881: goto -> 1065
    //   1884: iload #5
    //   1886: iconst_1
    //   1887: iadd
    //   1888: istore #5
    //   1890: goto -> 831
    //   1893: iload #7
    //   1895: iload #9
    //   1897: if_icmpge -> 1162
    //   1900: aload #19
    //   1902: iload #7
    //   1904: aaload
    //   1905: astore #20
    //   1907: aload #20
    //   1909: aload_1
    //   1910: if_acmpeq -> 1823
    //   1913: iload #5
    //   1915: iconst_1
    //   1916: iadd
    //   1917: istore #8
    //   1919: aload #15
    //   1921: iload #5
    //   1923: aload #20
    //   1925: aastore
    //   1926: iload #8
    //   1928: istore #5
    //   1930: iload #7
    //   1932: iconst_1
    //   1933: iadd
    //   1934: istore #7
    //   1936: goto -> 1893
    //   1939: iload #13
    //   1941: istore #12
    //   1943: goto -> 1173
    //   1946: iload #4
    //   1948: iconst_1
    //   1949: iadd
    //   1950: istore #4
    //   1952: goto -> 1348
    //   1955: iconst_0
    //   1956: istore #12
    //   1958: goto -> 1602
    // Exception table:
    //   from	to	target	type
    //   7	41	1742	finally
    //   44	69	1742	finally
    //   75	204	1742	finally
    //   212	270	1742	finally
    //   273	308	1742	finally
    //   313	341	1742	finally
    //   347	390	1742	finally
    //   390	413	1742	finally
    //   429	452	1742	finally
    //   458	481	1742	finally
    //   497	627	1742	finally
    //   632	762	1742	finally
    //   765	828	1742	finally
    //   831	872	1742	finally
    //   877	890	1742	finally
    //   890	919	1742	finally
    //   919	925	1742	finally
    //   928	952	1742	finally
    //   957	1045	1742	finally
    //   1050	1062	1742	finally
    //   1079	1093	1742	finally
    //   1099	1113	1742	finally
    //   1128	1141	1742	finally
    //   1144	1156	1742	finally
    //   1162	1169	1742	finally
    //   1173	1196	1742	finally
    //   1209	1226	1742	finally
    //   1233	1257	1742	finally
    //   1260	1293	1742	finally
    //   1293	1345	1742	finally
    //   1348	1396	1742	finally
    //   1396	1424	1742	finally
    //   1427	1448	1742	finally
    //   1453	1477	1742	finally
    //   1477	1510	1742	finally
    //   1514	1521	1742	finally
    //   1521	1546	1742	finally
    //   1546	1558	1742	finally
    //   1558	1594	1742	finally
    //   1612	1627	1742	finally
    //   1633	1638	1742	finally
    //   1638	1651	1742	finally
    //   1664	1669	1742	finally
    //   1669	1739	1742	finally
    //   1762	1786	1742	finally
    //   1789	1798	1742	finally
    //   1801	1808	1742	finally
  }
  
  private dph[] a(String paramString, dpn[] paramArrayOfdpn, dpi[] paramArrayOfdpi) {
    csp.a(paramString);
    return A().a(paramString, paramArrayOfdpi, paramArrayOfdpn);
  }
  
  private void b(dmu paramdmu) {
    if (paramdmu == null)
      throw new IllegalStateException("Component not created"); 
    if (!paramdmu.Q())
      throw new IllegalStateException("Component not initialized"); 
  }
  
  @WorkerThread
  private void c(zzatd paramzzatd) {
    djw djw1;
    boolean bool3 = true;
    C();
    a();
    csp.a(paramzzatd);
    csp.a(paramzzatd.a);
    djw djw2 = p().b(paramzzatd.a);
    String str = e().b(paramzzatd.a);
    boolean bool1 = false;
    if (djw2 == null) {
      djw1 = new djw(this, paramzzatd.a);
      djw1.a(e().x());
      djw1.c(str);
      bool1 = true;
    } else {
      djw1 = djw2;
      if (!str.equals(djw2.e())) {
        djw2.c(str);
        djw2.a(e().x());
        bool1 = true;
        djw1 = djw2;
      } 
    } 
    boolean bool2 = bool1;
    if (!TextUtils.isEmpty(paramzzatd.b)) {
      bool2 = bool1;
      if (!paramzzatd.b.equals(djw1.d())) {
        djw1.b(paramzzatd.b);
        bool2 = true;
      } 
    } 
    bool1 = bool2;
    if (!TextUtils.isEmpty(paramzzatd.k)) {
      bool1 = bool2;
      if (!paramzzatd.k.equals(djw1.f())) {
        djw1.d(paramzzatd.k);
        bool1 = true;
      } 
    } 
    bool2 = bool1;
    if (paramzzatd.e != 0L) {
      bool2 = bool1;
      if (paramzzatd.e != djw1.l()) {
        djw1.d(paramzzatd.e);
        bool2 = true;
      } 
    } 
    bool1 = bool2;
    if (!TextUtils.isEmpty(paramzzatd.c)) {
      bool1 = bool2;
      if (!paramzzatd.c.equals(djw1.i())) {
        djw1.e(paramzzatd.c);
        bool1 = true;
      } 
    } 
    if (paramzzatd.j != djw1.j()) {
      djw1.c(paramzzatd.j);
      bool1 = true;
    } 
    bool2 = bool1;
    if (paramzzatd.d != null) {
      bool2 = bool1;
      if (!paramzzatd.d.equals(djw1.k())) {
        djw1.f(paramzzatd.d);
        bool2 = true;
      } 
    } 
    bool1 = bool2;
    if (paramzzatd.f != djw1.m()) {
      djw1.e(paramzzatd.f);
      bool1 = true;
    } 
    if (paramzzatd.h != djw1.n()) {
      djw1.a(paramzzatd.h);
      bool1 = true;
    } 
    bool2 = bool1;
    if (!TextUtils.isEmpty(paramzzatd.g)) {
      bool2 = bool1;
      if (!paramzzatd.g.equals(djw1.y())) {
        djw1.g(paramzzatd.g);
        bool2 = true;
      } 
    } 
    if (paramzzatd.l != djw1.A()) {
      djw1.o(paramzzatd.l);
      bool1 = bool3;
    } else {
      bool1 = bool2;
    } 
    if (bool1)
      p().a(djw1); 
  }
  
  public djy A() {
    b(this.x);
    return this.x;
  }
  
  public djs B() {
    a(this.y);
    return this.y;
  }
  
  @WorkerThread
  public void C() {
    h().e();
  }
  
  FileChannel D() {
    return this.E;
  }
  
  @WorkerThread
  void E() {
    C();
    a();
    if (O() && F())
      a(a(D()), x().A()); 
  }
  
  @WorkerThread
  boolean F() {
    C();
    String str = this.m.B();
    File file = new File(s().getFilesDir(), str);
    try {
      this.E = (new RandomAccessFile(file, "rw")).getChannel();
      this.D = this.E.tryLock();
      if (this.D != null) {
        f().D().a("Storage concurrent access okay");
        return true;
      } 
      f().x().a("Storage concurrent data access panic");
    } catch (FileNotFoundException fileNotFoundException) {
      f().x().a("Failed to acquire storage lock", fileNotFoundException);
    } catch (IOException iOException) {
      f().x().a("Failed to access storage lock file", iOException);
    } 
    return false;
  }
  
  @WorkerThread
  public boolean G() {
    boolean bool = false;
    C();
    a();
    if (d().X())
      return false; 
    Boolean bool1 = d().Y();
    if (bool1 != null) {
      bool = bool1.booleanValue();
      return e().c(bool);
    } 
    if (!d().Z())
      bool = true; 
    return e().c(bool);
  }
  
  long H() {
    return (t().a() + e().z()) / 1000L / 60L / 60L / 24L;
  }
  
  void I() {
    d().V();
  }
  
  void J() {
    d().V();
    throw new IllegalStateException("Unexpected call on client side");
  }
  
  @WorkerThread
  protected boolean K() {
    C();
    return (this.F != null);
  }
  
  @WorkerThread
  public void L() {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: invokevirtual C : ()V
    //   6: aload_0
    //   7: invokevirtual a : ()V
    //   10: aload_0
    //   11: invokevirtual d : ()Ldka;
    //   14: invokevirtual V : ()Z
    //   17: pop
    //   18: aload_0
    //   19: invokevirtual e : ()Ldlh;
    //   22: invokevirtual C : ()Ljava/lang/Boolean;
    //   25: astore #8
    //   27: aload #8
    //   29: ifnonnull -> 46
    //   32: aload_0
    //   33: invokevirtual f : ()Ldkw;
    //   36: invokevirtual z : ()Ldky;
    //   39: ldc_w 'Upload data called on the client side before use of service was decided'
    //   42: invokevirtual a : (Ljava/lang/String;)V
    //   45: return
    //   46: aload #8
    //   48: invokevirtual booleanValue : ()Z
    //   51: ifeq -> 68
    //   54: aload_0
    //   55: invokevirtual f : ()Ldkw;
    //   58: invokevirtual x : ()Ldky;
    //   61: ldc_w 'Upload called in the client side when service should be used'
    //   64: invokevirtual a : (Ljava/lang/String;)V
    //   67: return
    //   68: aload_0
    //   69: getfield a : J
    //   72: lconst_0
    //   73: lcmp
    //   74: ifle -> 82
    //   77: aload_0
    //   78: invokespecial Q : ()V
    //   81: return
    //   82: aload_0
    //   83: invokevirtual K : ()Z
    //   86: ifeq -> 103
    //   89: aload_0
    //   90: invokevirtual f : ()Ldkw;
    //   93: invokevirtual z : ()Ldky;
    //   96: ldc_w 'Uploading requested multiple times'
    //   99: invokevirtual a : (Ljava/lang/String;)V
    //   102: return
    //   103: aload_0
    //   104: invokevirtual r : ()Ldla;
    //   107: invokevirtual x : ()Z
    //   110: ifne -> 131
    //   113: aload_0
    //   114: invokevirtual f : ()Ldkw;
    //   117: invokevirtual z : ()Ldky;
    //   120: ldc_w 'Network not connected, ignoring upload request'
    //   123: invokevirtual a : (Ljava/lang/String;)V
    //   126: aload_0
    //   127: invokespecial Q : ()V
    //   130: return
    //   131: aload_0
    //   132: invokevirtual t : ()Lcvo;
    //   135: invokeinterface a : ()J
    //   140: lstore #4
    //   142: aload_0
    //   143: lload #4
    //   145: aload_0
    //   146: invokevirtual d : ()Ldka;
    //   149: invokevirtual aj : ()J
    //   152: lsub
    //   153: invokevirtual a : (J)Z
    //   156: pop
    //   157: aload_0
    //   158: invokevirtual e : ()Ldlh;
    //   161: getfield c : Ldlk;
    //   164: invokevirtual a : ()J
    //   167: lstore #6
    //   169: lload #6
    //   171: lconst_0
    //   172: lcmp
    //   173: ifeq -> 200
    //   176: aload_0
    //   177: invokevirtual f : ()Ldkw;
    //   180: invokevirtual C : ()Ldky;
    //   183: ldc_w 'Uploading events. Elapsed time since last upload attempt (ms)'
    //   186: lload #4
    //   188: lload #6
    //   190: lsub
    //   191: invokestatic abs : (J)J
    //   194: invokestatic valueOf : (J)Ljava/lang/Long;
    //   197: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   200: aload_0
    //   201: invokevirtual p : ()Ldkb;
    //   204: invokevirtual C : ()Ljava/lang/String;
    //   207: astore #10
    //   209: aload #10
    //   211: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   214: ifne -> 741
    //   217: aload_0
    //   218: getfield I : J
    //   221: ldc2_w -1
    //   224: lcmp
    //   225: ifne -> 239
    //   228: aload_0
    //   229: aload_0
    //   230: invokevirtual p : ()Ldkb;
    //   233: invokevirtual K : ()J
    //   236: putfield I : J
    //   239: aload_0
    //   240: invokevirtual d : ()Ldka;
    //   243: aload #10
    //   245: invokevirtual h : (Ljava/lang/String;)I
    //   248: istore_1
    //   249: aload_0
    //   250: invokevirtual d : ()Ldka;
    //   253: aload #10
    //   255: invokevirtual i : (Ljava/lang/String;)I
    //   258: istore_3
    //   259: aload_0
    //   260: invokevirtual p : ()Ldkb;
    //   263: aload #10
    //   265: iload_1
    //   266: iload_3
    //   267: invokevirtual a : (Ljava/lang/String;II)Ljava/util/List;
    //   270: astore #9
    //   272: aload #9
    //   274: invokeinterface isEmpty : ()Z
    //   279: ifne -> 45
    //   282: aload #9
    //   284: invokeinterface iterator : ()Ljava/util/Iterator;
    //   289: astore #8
    //   291: aload #8
    //   293: invokeinterface hasNext : ()Z
    //   298: ifeq -> 811
    //   301: aload #8
    //   303: invokeinterface next : ()Ljava/lang/Object;
    //   308: checkcast android/util/Pair
    //   311: getfield first : Ljava/lang/Object;
    //   314: checkcast dpl
    //   317: astore #11
    //   319: aload #11
    //   321: getfield s : Ljava/lang/String;
    //   324: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   327: ifne -> 291
    //   330: aload #11
    //   332: getfield s : Ljava/lang/String;
    //   335: astore #8
    //   337: aload #8
    //   339: ifnull -> 804
    //   342: iconst_0
    //   343: istore_1
    //   344: iload_1
    //   345: aload #9
    //   347: invokeinterface size : ()I
    //   352: if_icmpge -> 804
    //   355: aload #9
    //   357: iload_1
    //   358: invokeinterface get : (I)Ljava/lang/Object;
    //   363: checkcast android/util/Pair
    //   366: getfield first : Ljava/lang/Object;
    //   369: checkcast dpl
    //   372: astore #11
    //   374: aload #11
    //   376: getfield s : Ljava/lang/String;
    //   379: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   382: ifeq -> 392
    //   385: iload_1
    //   386: iconst_1
    //   387: iadd
    //   388: istore_1
    //   389: goto -> 344
    //   392: aload #11
    //   394: getfield s : Ljava/lang/String;
    //   397: aload #8
    //   399: invokevirtual equals : (Ljava/lang/Object;)Z
    //   402: ifne -> 385
    //   405: aload #9
    //   407: iconst_0
    //   408: iload_1
    //   409: invokeinterface subList : (II)Ljava/util/List;
    //   414: astore #8
    //   416: new dpk
    //   419: dup
    //   420: invokespecial <init> : ()V
    //   423: astore #11
    //   425: aload #11
    //   427: aload #8
    //   429: invokeinterface size : ()I
    //   434: anewarray dpl
    //   437: putfield a : [Ldpl;
    //   440: new java/util/ArrayList
    //   443: dup
    //   444: aload #8
    //   446: invokeinterface size : ()I
    //   451: invokespecial <init> : (I)V
    //   454: astore #9
    //   456: iload_2
    //   457: istore_1
    //   458: iload_1
    //   459: aload #11
    //   461: getfield a : [Ldpl;
    //   464: arraylength
    //   465: if_icmpge -> 579
    //   468: aload #11
    //   470: getfield a : [Ldpl;
    //   473: iload_1
    //   474: aload #8
    //   476: iload_1
    //   477: invokeinterface get : (I)Ljava/lang/Object;
    //   482: checkcast android/util/Pair
    //   485: getfield first : Ljava/lang/Object;
    //   488: checkcast dpl
    //   491: aastore
    //   492: aload #9
    //   494: aload #8
    //   496: iload_1
    //   497: invokeinterface get : (I)Ljava/lang/Object;
    //   502: checkcast android/util/Pair
    //   505: getfield second : Ljava/lang/Object;
    //   508: checkcast java/lang/Long
    //   511: invokeinterface add : (Ljava/lang/Object;)Z
    //   516: pop
    //   517: aload #11
    //   519: getfield a : [Ldpl;
    //   522: iload_1
    //   523: aaload
    //   524: aload_0
    //   525: invokevirtual d : ()Ldka;
    //   528: invokevirtual U : ()J
    //   531: invokestatic valueOf : (J)Ljava/lang/Long;
    //   534: putfield r : Ljava/lang/Long;
    //   537: aload #11
    //   539: getfield a : [Ldpl;
    //   542: iload_1
    //   543: aaload
    //   544: lload #4
    //   546: invokestatic valueOf : (J)Ljava/lang/Long;
    //   549: putfield d : Ljava/lang/Long;
    //   552: aload #11
    //   554: getfield a : [Ldpl;
    //   557: iload_1
    //   558: aaload
    //   559: aload_0
    //   560: invokevirtual d : ()Ldka;
    //   563: invokevirtual V : ()Z
    //   566: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   569: putfield z : Ljava/lang/Boolean;
    //   572: iload_1
    //   573: iconst_1
    //   574: iadd
    //   575: istore_1
    //   576: goto -> 458
    //   579: aload_0
    //   580: invokevirtual f : ()Ldkw;
    //   583: iconst_2
    //   584: invokevirtual a : (I)Z
    //   587: ifeq -> 798
    //   590: aload #11
    //   592: invokestatic b : (Ldpk;)Ljava/lang/String;
    //   595: astore #8
    //   597: aload_0
    //   598: invokevirtual o : ()Ldou;
    //   601: aload #11
    //   603: invokevirtual a : (Ldpk;)[B
    //   606: astore #13
    //   608: aload_0
    //   609: invokevirtual d : ()Ldka;
    //   612: invokevirtual ai : ()Ljava/lang/String;
    //   615: astore #12
    //   617: new java/net/URL
    //   620: dup
    //   621: aload #12
    //   623: invokespecial <init> : (Ljava/lang/String;)V
    //   626: astore #14
    //   628: aload_0
    //   629: aload #9
    //   631: invokevirtual a : (Ljava/util/List;)V
    //   634: aload_0
    //   635: invokevirtual e : ()Ldlh;
    //   638: getfield d : Ldlk;
    //   641: lload #4
    //   643: invokevirtual a : (J)V
    //   646: ldc_w '?'
    //   649: astore #9
    //   651: aload #11
    //   653: getfield a : [Ldpl;
    //   656: arraylength
    //   657: ifle -> 672
    //   660: aload #11
    //   662: getfield a : [Ldpl;
    //   665: iconst_0
    //   666: aaload
    //   667: getfield o : Ljava/lang/String;
    //   670: astore #9
    //   672: aload_0
    //   673: invokevirtual f : ()Ldkw;
    //   676: invokevirtual D : ()Ldky;
    //   679: ldc_w 'Uploading data. app, uncompressed size, data'
    //   682: aload #9
    //   684: aload #13
    //   686: arraylength
    //   687: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   690: aload #8
    //   692: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   695: aload_0
    //   696: invokevirtual r : ()Ldla;
    //   699: aload #10
    //   701: aload #14
    //   703: aload #13
    //   705: aconst_null
    //   706: new dly
    //   709: dup
    //   710: aload_0
    //   711: invokespecial <init> : (Ldlv;)V
    //   714: invokevirtual a : (Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Ldlc;)V
    //   717: return
    //   718: astore #8
    //   720: aload_0
    //   721: invokevirtual f : ()Ldkw;
    //   724: invokevirtual x : ()Ldky;
    //   727: ldc_w 'Failed to parse upload URL. Not uploading. appId'
    //   730: aload #10
    //   732: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   735: aload #12
    //   737: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   740: return
    //   741: aload_0
    //   742: ldc2_w -1
    //   745: putfield I : J
    //   748: aload_0
    //   749: invokevirtual p : ()Ldkb;
    //   752: lload #4
    //   754: aload_0
    //   755: invokevirtual d : ()Ldka;
    //   758: invokevirtual aj : ()J
    //   761: lsub
    //   762: invokevirtual b : (J)Ljava/lang/String;
    //   765: astore #8
    //   767: aload #8
    //   769: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   772: ifne -> 45
    //   775: aload_0
    //   776: invokevirtual p : ()Ldkb;
    //   779: aload #8
    //   781: invokevirtual b : (Ljava/lang/String;)Ldjw;
    //   784: astore #8
    //   786: aload #8
    //   788: ifnull -> 45
    //   791: aload_0
    //   792: aload #8
    //   794: invokevirtual a : (Ldjw;)V
    //   797: return
    //   798: aconst_null
    //   799: astore #8
    //   801: goto -> 597
    //   804: aload #9
    //   806: astore #8
    //   808: goto -> 416
    //   811: aconst_null
    //   812: astore #8
    //   814: goto -> 337
    // Exception table:
    //   from	to	target	type
    //   617	646	718	java/net/MalformedURLException
    //   651	672	718	java/net/MalformedURLException
    //   672	717	718	java/net/MalformedURLException
  }
  
  void M() {
    this.H++;
  }
  
  @WorkerThread
  void N() {
    C();
    a();
    if (!this.A) {
      f().B().a("This instance being marked as an uploader");
      E();
    } 
    this.A = true;
  }
  
  @WorkerThread
  boolean O() {
    C();
    a();
    return !!this.A;
  }
  
  @WorkerThread
  int a(FileChannel paramFileChannel) {
    C();
    if (paramFileChannel == null || !paramFileChannel.isOpen()) {
      f().x().a("Bad chanel to read from");
      return 0;
    } 
    ByteBuffer byteBuffer = ByteBuffer.allocate(4);
    try {
      paramFileChannel.position(0L);
      int i = paramFileChannel.read(byteBuffer);
      if (i != 4) {
        if (i != -1) {
          f().z().a("Unexpected data length. Bytes read", Integer.valueOf(i));
          return 0;
        } 
        return 0;
      } 
    } catch (IOException iOException) {
      f().x().a("Failed to read from channel", iOException);
      return 0;
    } 
    byteBuffer.flip();
    return byteBuffer.getInt();
  }
  
  @WorkerThread
  zzatd a(String paramString) {
    djw djw = p().b(paramString);
    if (djw == null || TextUtils.isEmpty(djw.i())) {
      f().C().a("No app data available; dropping", paramString);
      return null;
    } 
    try {
      String str = (dgl.b(s()).b(paramString, 0)).versionName;
      if (djw.i() != null && !djw.i().equals(str)) {
        f().z().a("App version does not match; dropping. appId", dkw.a(paramString));
        return null;
      } 
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {}
    return new zzatd(paramString, djw.d(), djw.i(), djw.j(), djw.k(), djw.l(), djw.m(), null, djw.n(), false, djw.f(), djw.A());
  }
  
  void a() {
    if (!this.z)
      throw new IllegalStateException("AppMeasurement is not initialized"); 
  }
  
  @WorkerThread
  protected void a(int paramInt, Throwable paramThrowable, byte[] paramArrayOfbyte) {
    boolean bool = false;
    C();
    a();
    byte[] arrayOfByte = paramArrayOfbyte;
    if (paramArrayOfbyte == null)
      arrayOfByte = new byte[0]; 
    List<Long> list = this.F;
    this.F = null;
    if ((paramInt == 200 || paramInt == 204) && paramThrowable == null) {
      try {
        (e()).c.a(t().a());
        (e()).d.a(0L);
        Q();
        f().D().a("Successful upload. Got network response. code, size", Integer.valueOf(paramInt), Integer.valueOf(arrayOfByte.length));
        p().x();
        try {
        
        } finally {
          p().z();
        } 
      } catch (SQLiteException sQLiteException) {
        f().x().a("Database error while trying to delete uploaded bundles", sQLiteException);
        this.a = t().b();
        f().D().a("Disable upload, time", Long.valueOf(this.a));
        return;
      } 
      p().y();
      p().z();
      if (r().x() && P()) {
        L();
      } else {
        this.I = -1L;
        Q();
      } 
      this.a = 0L;
      return;
    } 
    f().D().a("Network upload failed. Will retry later. code, error", Integer.valueOf(paramInt), sQLiteException);
    (e()).d.a(t().a());
    if (paramInt == 503 || paramInt == 429)
      bool = true; 
    if (bool)
      (e()).e.a(t().a()); 
    Q();
  }
  
  void a(zzatd paramzzatd) {
    C();
    a();
    csp.a(paramzzatd.a);
    c(paramzzatd);
  }
  
  @WorkerThread
  void a(zzatd paramzzatd, long paramLong) {
    djw djw2 = p().b(paramzzatd.a);
    djw djw1 = djw2;
    if (djw2 != null) {
      djw1 = djw2;
      if (djw2.d() != null) {
        djw1 = djw2;
        if (!djw2.d().equals(paramzzatd.b)) {
          f().z().a("New GMP App Id passed in. Removing cached database data. appId", dkw.a(djw2.b()));
          p().g(djw2.b());
          djw1 = null;
        } 
      } 
    } 
    if (djw1 != null && djw1.i() != null && !djw1.i().equals(paramzzatd.c)) {
      Bundle bundle = new Bundle();
      bundle.putString("_pv", djw1.i());
      a(new zzatq("_au", new zzato(bundle), "auto", paramLong), paramzzatd);
    } 
  }
  
  @WorkerThread
  void a(zzatg paramzzatg) {
    zzatd zzatd = a(paramzzatg.b);
    if (zzatd != null)
      a(paramzzatg, zzatd); 
  }
  
  @WorkerThread
  void a(zzatg paramzzatg, zzatd paramzzatd) {
    csp.a(paramzzatg);
    csp.a(paramzzatg.b);
    csp.a(paramzzatg.c);
    csp.a(paramzzatg.d);
    csp.a(paramzzatg.d.b);
    C();
    a();
    if (TextUtils.isEmpty(paramzzatd.b))
      return; 
    if (!paramzzatd.h) {
      c(paramzzatd);
      return;
    } 
    paramzzatg = new zzatg(paramzzatg);
    p().x();
    try {
      boolean bool;
      zzatg zzatg1 = p().d(paramzzatg.b, paramzzatg.d.b);
      if (zzatg1 != null && zzatg1.f) {
        paramzzatg.c = zzatg1.c;
        paramzzatg.e = zzatg1.e;
        paramzzatg.g = zzatg1.g;
        paramzzatg.j = zzatg1.j;
        bool = false;
      } else if (TextUtils.isEmpty(paramzzatg.g)) {
        zzauq zzauq = paramzzatg.d;
        paramzzatg.d = new zzauq(zzauq.b, paramzzatg.e, zzauq.a(), zzauq.g);
        paramzzatg.f = true;
        bool = true;
      } else {
        bool = false;
      } 
      if (paramzzatg.f) {
        zzauq zzauq = paramzzatg.d;
        dot dot = new dot(paramzzatg.b, paramzzatg.c, zzauq.b, zzauq.c, zzauq.a());
        if (p().a(dot)) {
          f().C().a("User property updated immediately", paramzzatg.b, dot.c, dot.e);
        } else {
          f().x().a("(2)Too many active user properties, ignoring", dkw.a(paramzzatg.b), dot.c, dot.e);
        } 
        if (bool && paramzzatg.j != null)
          b(new zzatq(paramzzatg.j, paramzzatg.e), paramzzatd); 
      } 
      if (p().a(paramzzatg)) {
        f().C().a("Conditional property added", paramzzatg.b, paramzzatg.d.b, paramzzatg.d.a());
      } else {
        f().x().a("Too many conditional properties, ignoring", dkw.a(paramzzatg.b), paramzzatg.d.b, paramzzatg.d.a());
      } 
      p().y();
      return;
    } finally {
      p().z();
    } 
  }
  
  @WorkerThread
  void a(zzatq paramzzatq, zzatd paramzzatd) {
    csp.a(paramzzatd);
    csp.a(paramzzatd.a);
    C();
    a();
    String str = paramzzatd.a;
    long l = paramzzatq.d;
    if (!o().a(paramzzatq, paramzzatd))
      return; 
    if (!paramzzatd.h) {
      c(paramzzatd);
      return;
    } 
    p().x();
    try {
    
    } finally {
      p().z();
    } 
    List<zzatg> list2 = p().b(str, l);
    ArrayList<zzatq> arrayList2 = new ArrayList(list2.size());
    for (zzatg zzatg : list2) {
      if (zzatg != null) {
        f().C().a("User property expired", zzatg.b, zzatg.d.b, zzatg.d.a());
        p().b(str, zzatg.d.b);
        if (zzatg.l != null)
          arrayList2.add(zzatg.l); 
        p().e(str, zzatg.d.b);
      } 
    } 
    Iterator<zzatq> iterator2 = arrayList2.iterator();
    while (iterator2.hasNext())
      b(new zzatq(iterator2.next(), l), paramzzatd); 
    List<zzatg> list1 = p().a(str, paramzzatq.a, l);
    ArrayList<zzatq> arrayList1 = new ArrayList(list1.size());
    for (zzatg zzatg : list1) {
      if (zzatg != null) {
        zzauq zzauq = zzatg.d;
        dot dot = new dot(zzatg.b, zzatg.c, zzauq.b, l, zzauq.a());
        if (p().a(dot)) {
          f().C().a("User property triggered", zzatg.b, dot.c, dot.e);
        } else {
          f().x().a("Too many active user properties, ignoring", dkw.a(zzatg.b), dot.c, dot.e);
        } 
        if (zzatg.j != null)
          arrayList1.add(zzatg.j); 
        zzatg.d = new zzauq(dot);
        zzatg.f = true;
        p().a(zzatg);
      } 
    } 
    b(paramzzatq, paramzzatd);
    Iterator<zzatq> iterator1 = arrayList1.iterator();
    while (iterator1.hasNext())
      b(new zzatq(iterator1.next(), l), paramzzatd); 
    p().y();
    p().z();
  }
  
  @WorkerThread
  void a(zzatq paramzzatq, String paramString) {
    djw djw = p().b(paramString);
    if (djw == null || TextUtils.isEmpty(djw.i())) {
      f().C().a("No app data available; dropping event", paramString);
      return;
    } 
    try {
      String str = (dgl.b(s()).b(paramString, 0)).versionName;
      if (djw.i() != null && !djw.i().equals(str)) {
        f().z().a("App version does not match; dropping event. appId", dkw.a(paramString));
        return;
      } 
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      if (!"_ui".equals(paramzzatq.a))
        f().z().a("Could not find package. appId", dkw.a(paramString)); 
    } 
    a(paramzzatq, new zzatd(paramString, djw.d(), djw.i(), djw.j(), djw.k(), djw.l(), djw.m(), null, djw.n(), false, djw.f(), djw.A()));
  }
  
  @WorkerThread
  void a(zzauq paramzzauq, zzatd paramzzatd) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #4
    //   3: iconst_0
    //   4: istore_3
    //   5: aload_0
    //   6: invokevirtual C : ()V
    //   9: aload_0
    //   10: invokevirtual a : ()V
    //   13: aload_2
    //   14: getfield b : Ljava/lang/String;
    //   17: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   20: ifeq -> 24
    //   23: return
    //   24: aload_2
    //   25: getfield h : Z
    //   28: ifne -> 37
    //   31: aload_0
    //   32: aload_2
    //   33: invokespecial c : (Lcom/google/android/gms/internal/zzatd;)V
    //   36: return
    //   37: aload_0
    //   38: invokevirtual o : ()Ldou;
    //   41: aload_1
    //   42: getfield b : Ljava/lang/String;
    //   45: invokevirtual e : (Ljava/lang/String;)I
    //   48: istore #5
    //   50: iload #5
    //   52: ifeq -> 105
    //   55: aload_0
    //   56: invokevirtual o : ()Ldou;
    //   59: aload_1
    //   60: getfield b : Ljava/lang/String;
    //   63: aload_0
    //   64: invokevirtual d : ()Ldka;
    //   67: invokevirtual z : ()I
    //   70: iconst_1
    //   71: invokevirtual a : (Ljava/lang/String;IZ)Ljava/lang/String;
    //   74: astore_2
    //   75: aload_1
    //   76: getfield b : Ljava/lang/String;
    //   79: ifnull -> 90
    //   82: aload_1
    //   83: getfield b : Ljava/lang/String;
    //   86: invokevirtual length : ()I
    //   89: istore_3
    //   90: aload_0
    //   91: invokevirtual o : ()Ldou;
    //   94: iload #5
    //   96: ldc_w '_ev'
    //   99: aload_2
    //   100: iload_3
    //   101: invokevirtual a : (ILjava/lang/String;Ljava/lang/String;I)V
    //   104: return
    //   105: aload_0
    //   106: invokevirtual o : ()Ldou;
    //   109: aload_1
    //   110: getfield b : Ljava/lang/String;
    //   113: aload_1
    //   114: invokevirtual a : ()Ljava/lang/Object;
    //   117: invokevirtual c : (Ljava/lang/String;Ljava/lang/Object;)I
    //   120: istore #5
    //   122: iload #5
    //   124: ifeq -> 199
    //   127: aload_0
    //   128: invokevirtual o : ()Ldou;
    //   131: aload_1
    //   132: getfield b : Ljava/lang/String;
    //   135: aload_0
    //   136: invokevirtual d : ()Ldka;
    //   139: invokevirtual z : ()I
    //   142: iconst_1
    //   143: invokevirtual a : (Ljava/lang/String;IZ)Ljava/lang/String;
    //   146: astore_2
    //   147: aload_1
    //   148: invokevirtual a : ()Ljava/lang/Object;
    //   151: astore_1
    //   152: iload #4
    //   154: istore_3
    //   155: aload_1
    //   156: ifnull -> 184
    //   159: aload_1
    //   160: instanceof java/lang/String
    //   163: ifne -> 176
    //   166: iload #4
    //   168: istore_3
    //   169: aload_1
    //   170: instanceof java/lang/CharSequence
    //   173: ifeq -> 184
    //   176: aload_1
    //   177: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   180: invokevirtual length : ()I
    //   183: istore_3
    //   184: aload_0
    //   185: invokevirtual o : ()Ldou;
    //   188: iload #5
    //   190: ldc_w '_ev'
    //   193: aload_2
    //   194: iload_3
    //   195: invokevirtual a : (ILjava/lang/String;Ljava/lang/String;I)V
    //   198: return
    //   199: aload_0
    //   200: invokevirtual o : ()Ldou;
    //   203: aload_1
    //   204: getfield b : Ljava/lang/String;
    //   207: aload_1
    //   208: invokevirtual a : ()Ljava/lang/Object;
    //   211: invokevirtual d : (Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    //   214: astore #7
    //   216: aload #7
    //   218: ifnull -> 23
    //   221: new dot
    //   224: dup
    //   225: aload_2
    //   226: getfield a : Ljava/lang/String;
    //   229: aload_1
    //   230: getfield g : Ljava/lang/String;
    //   233: aload_1
    //   234: getfield b : Ljava/lang/String;
    //   237: aload_1
    //   238: getfield c : J
    //   241: aload #7
    //   243: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    //   246: astore_1
    //   247: aload_0
    //   248: invokevirtual f : ()Ldkw;
    //   251: invokevirtual C : ()Ldky;
    //   254: ldc_w 'Setting user property'
    //   257: aload_1
    //   258: getfield c : Ljava/lang/String;
    //   261: aload #7
    //   263: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   266: aload_0
    //   267: invokevirtual p : ()Ldkb;
    //   270: invokevirtual x : ()V
    //   273: aload_0
    //   274: aload_2
    //   275: invokespecial c : (Lcom/google/android/gms/internal/zzatd;)V
    //   278: aload_0
    //   279: invokevirtual p : ()Ldkb;
    //   282: aload_1
    //   283: invokevirtual a : (Ldot;)Z
    //   286: istore #6
    //   288: aload_0
    //   289: invokevirtual p : ()Ldkb;
    //   292: invokevirtual y : ()V
    //   295: iload #6
    //   297: ifeq -> 329
    //   300: aload_0
    //   301: invokevirtual f : ()Ldkw;
    //   304: invokevirtual C : ()Ldky;
    //   307: ldc_w 'User property set'
    //   310: aload_1
    //   311: getfield c : Ljava/lang/String;
    //   314: aload_1
    //   315: getfield e : Ljava/lang/Object;
    //   318: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   321: aload_0
    //   322: invokevirtual p : ()Ldkb;
    //   325: invokevirtual z : ()V
    //   328: return
    //   329: aload_0
    //   330: invokevirtual f : ()Ldkw;
    //   333: invokevirtual x : ()Ldky;
    //   336: ldc_w 'Too many unique user properties are set. Ignoring user property'
    //   339: aload_1
    //   340: getfield c : Ljava/lang/String;
    //   343: aload_1
    //   344: getfield e : Ljava/lang/Object;
    //   347: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   350: aload_0
    //   351: invokevirtual o : ()Ldou;
    //   354: bipush #9
    //   356: aconst_null
    //   357: aconst_null
    //   358: iconst_0
    //   359: invokevirtual a : (ILjava/lang/String;Ljava/lang/String;I)V
    //   362: goto -> 321
    //   365: astore_1
    //   366: aload_0
    //   367: invokevirtual p : ()Ldkb;
    //   370: invokevirtual z : ()V
    //   373: aload_1
    //   374: athrow
    // Exception table:
    //   from	to	target	type
    //   273	295	365	finally
    //   300	321	365	finally
    //   329	362	365	finally
  }
  
  void a(djw paramdjw) {
    ArrayMap<String, String> arrayMap = null;
    if (TextUtils.isEmpty(paramdjw.d())) {
      a(paramdjw.b(), 204, null, null, null);
      return;
    } 
    String str = d().a(paramdjw.d(), paramdjw.c());
    try {
      URL uRL = new URL(str);
      f().D().a("Fetching remote configuration", paramdjw.b());
      dpe dpe = j().a(paramdjw.b());
      String str1 = j().b(paramdjw.b());
      ArrayMap<String, String> arrayMap1 = arrayMap;
      if (dpe != null) {
        arrayMap1 = arrayMap;
        if (!TextUtils.isEmpty(str1)) {
          arrayMap1 = new ArrayMap();
          arrayMap1.put("If-Modified-Since", str1);
        } 
      } 
      r().a(paramdjw.b(), uRL, (Map<String, String>)arrayMap1, new dlz(this));
      return;
    } catch (MalformedURLException malformedURLException) {
      f().x().a("Failed to parse config URL. Not fetching. appId", dkw.a(paramdjw.b()), str);
      return;
    } 
  }
  
  void a(dki paramdki, zzatd paramzzatd) {
    Long long_;
    C();
    a();
    csp.a(paramdki);
    csp.a(paramzzatd);
    csp.a(paramdki.a);
    csp.b(paramdki.a.equals(paramzzatd.a));
    dpl dpl = new dpl();
    dpl.a = Integer.valueOf(1);
    dpl.i = "android";
    dpl.o = paramzzatd.a;
    dpl.n = paramzzatd.d;
    dpl.p = paramzzatd.c;
    dpl.C = Integer.valueOf((int)paramzzatd.j);
    dpl.q = Long.valueOf(paramzzatd.e);
    dpl.y = paramzzatd.b;
    if (paramzzatd.f == 0L) {
      long_ = null;
    } else {
      long_ = Long.valueOf(paramzzatd.f);
    } 
    dpl.v = long_;
    Pair<String, Boolean> pair = e().a(paramzzatd.a);
    if (!TextUtils.isEmpty((CharSequence)pair.first)) {
      dpl.s = (String)pair.first;
      dpl.t = (Boolean)pair.second;
    } else if (!w().a(this.c)) {
      String str1;
      String str2 = Settings.Secure.getString(this.c.getContentResolver(), "android_id");
      if (str2 == null) {
        f().z().a("null secure ID. appId", dkw.a(dpl.o));
        str1 = "null";
      } else {
        str1 = str2;
        if (str2.isEmpty()) {
          f().z().a("empty secure ID. appId", dkw.a(dpl.o));
          str1 = str2;
        } 
      } 
      dpl.F = str1;
    } 
    dpl.k = w().x();
    dpl.j = w().y();
    dpl.m = Integer.valueOf((int)w().z());
    dpl.l = w().A();
    dpl.r = null;
    dpl.d = null;
    dpl.e = null;
    dpl.f = null;
    dpl.H = Long.valueOf(paramzzatd.l);
    djw djw2 = p().b(paramzzatd.a);
    djw djw1 = djw2;
    if (djw2 == null) {
      djw1 = new djw(this, paramzzatd.a);
      djw1.a(e().x());
      djw1.d(paramzzatd.k);
      djw1.b(paramzzatd.b);
      djw1.c(e().b(paramzzatd.a));
      djw1.f(0L);
      djw1.a(0L);
      djw1.b(0L);
      djw1.e(paramzzatd.c);
      djw1.c(paramzzatd.j);
      djw1.f(paramzzatd.d);
      djw1.d(paramzzatd.e);
      djw1.e(paramzzatd.f);
      djw1.a(paramzzatd.h);
      djw1.o(paramzzatd.l);
      p().a(djw1);
    } 
    dpl.u = djw1.c();
    dpl.B = djw1.f();
    List<dot> list = p().a(paramzzatd.a);
    dpl.c = new dpn[list.size()];
    for (int i = 0; i < list.size(); i++) {
      dpn dpn = new dpn();
      dpl.c[i] = dpn;
      dpn.b = ((dot)list.get(i)).c;
      dpn.a = Long.valueOf(((dot)list.get(i)).d);
      o().a(dpn, ((dot)list.get(i)).e);
    } 
    try {
      long l = p().a(dpl);
      if (p().a(paramdki, l, a(paramdki)))
        this.a = 0L; 
      return;
    } catch (IOException iOException) {
      f().x().a("Data loss. Failed to insert raw event metadata. appId", dkw.a(dpl.o), iOException);
      return;
    } 
  }
  
  void a(dmu paramdmu) {
    this.G++;
  }
  
  @WorkerThread
  void a(String paramString, int paramInt, Throwable paramThrowable, byte[] paramArrayOfbyte, Map<String, List<String>> paramMap) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #7
    //   3: aload_0
    //   4: invokevirtual C : ()V
    //   7: aload_0
    //   8: invokevirtual a : ()V
    //   11: aload_1
    //   12: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   15: pop
    //   16: aload #4
    //   18: astore #9
    //   20: aload #4
    //   22: ifnonnull -> 30
    //   25: iconst_0
    //   26: newarray byte
    //   28: astore #9
    //   30: aload_0
    //   31: invokevirtual p : ()Ldkb;
    //   34: invokevirtual x : ()V
    //   37: aload_0
    //   38: invokevirtual p : ()Ldkb;
    //   41: aload_1
    //   42: invokevirtual b : (Ljava/lang/String;)Ldjw;
    //   45: astore #4
    //   47: iload_2
    //   48: sipush #200
    //   51: if_icmpeq -> 475
    //   54: iload_2
    //   55: sipush #204
    //   58: if_icmpeq -> 475
    //   61: iload_2
    //   62: sipush #304
    //   65: if_icmpne -> 108
    //   68: goto -> 475
    //   71: aload #4
    //   73: ifnonnull -> 114
    //   76: aload_0
    //   77: invokevirtual f : ()Ldkw;
    //   80: invokevirtual z : ()Ldky;
    //   83: ldc_w 'App does not exist in onConfigFetched. appId'
    //   86: aload_1
    //   87: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   90: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   93: aload_0
    //   94: invokevirtual p : ()Ldkb;
    //   97: invokevirtual y : ()V
    //   100: aload_0
    //   101: invokevirtual p : ()Ldkb;
    //   104: invokevirtual z : ()V
    //   107: return
    //   108: iconst_0
    //   109: istore #6
    //   111: goto -> 71
    //   114: iload #6
    //   116: ifne -> 126
    //   119: iload_2
    //   120: sipush #404
    //   123: if_icmpne -> 355
    //   126: aload #5
    //   128: ifnull -> 208
    //   131: aload #5
    //   133: ldc_w 'Last-Modified'
    //   136: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   141: checkcast java/util/List
    //   144: astore_3
    //   145: aload_3
    //   146: ifnull -> 213
    //   149: aload_3
    //   150: invokeinterface size : ()I
    //   155: ifle -> 213
    //   158: aload_3
    //   159: iconst_0
    //   160: invokeinterface get : (I)Ljava/lang/Object;
    //   165: checkcast java/lang/String
    //   168: astore_3
    //   169: goto -> 485
    //   172: aload_0
    //   173: invokevirtual j : ()Ldlp;
    //   176: aload_1
    //   177: invokevirtual a : (Ljava/lang/String;)Ldpe;
    //   180: ifnonnull -> 244
    //   183: aload_0
    //   184: invokevirtual j : ()Ldlp;
    //   187: aload_1
    //   188: aconst_null
    //   189: aconst_null
    //   190: invokevirtual a : (Ljava/lang/String;[BLjava/lang/String;)Z
    //   193: istore #8
    //   195: iload #8
    //   197: ifne -> 244
    //   200: aload_0
    //   201: invokevirtual p : ()Ldkb;
    //   204: invokevirtual z : ()V
    //   207: return
    //   208: aconst_null
    //   209: astore_3
    //   210: goto -> 145
    //   213: aconst_null
    //   214: astore_3
    //   215: goto -> 485
    //   218: aload_0
    //   219: invokevirtual j : ()Ldlp;
    //   222: aload_1
    //   223: aload #9
    //   225: aload_3
    //   226: invokevirtual a : (Ljava/lang/String;[BLjava/lang/String;)Z
    //   229: istore #8
    //   231: iload #8
    //   233: ifne -> 244
    //   236: aload_0
    //   237: invokevirtual p : ()Ldkb;
    //   240: invokevirtual z : ()V
    //   243: return
    //   244: aload #4
    //   246: aload_0
    //   247: invokevirtual t : ()Lcvo;
    //   250: invokeinterface a : ()J
    //   255: invokevirtual g : (J)V
    //   258: aload_0
    //   259: invokevirtual p : ()Ldkb;
    //   262: aload #4
    //   264: invokevirtual a : (Ldjw;)V
    //   267: iload_2
    //   268: sipush #404
    //   271: if_icmpne -> 322
    //   274: aload_0
    //   275: invokevirtual f : ()Ldkw;
    //   278: invokevirtual A : ()Ldky;
    //   281: ldc_w 'Config not found. Using empty config. appId'
    //   284: aload_1
    //   285: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   288: aload_0
    //   289: invokevirtual r : ()Ldla;
    //   292: invokevirtual x : ()Z
    //   295: ifeq -> 348
    //   298: aload_0
    //   299: invokespecial P : ()Z
    //   302: ifeq -> 348
    //   305: aload_0
    //   306: invokevirtual L : ()V
    //   309: goto -> 93
    //   312: astore_1
    //   313: aload_0
    //   314: invokevirtual p : ()Ldkb;
    //   317: invokevirtual z : ()V
    //   320: aload_1
    //   321: athrow
    //   322: aload_0
    //   323: invokevirtual f : ()Ldkw;
    //   326: invokevirtual D : ()Ldky;
    //   329: ldc_w 'Successfully fetched config. Got network response. code, size'
    //   332: iload_2
    //   333: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   336: aload #9
    //   338: arraylength
    //   339: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   342: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   345: goto -> 288
    //   348: aload_0
    //   349: invokespecial Q : ()V
    //   352: goto -> 93
    //   355: aload #4
    //   357: aload_0
    //   358: invokevirtual t : ()Lcvo;
    //   361: invokeinterface a : ()J
    //   366: invokevirtual h : (J)V
    //   369: aload_0
    //   370: invokevirtual p : ()Ldkb;
    //   373: aload #4
    //   375: invokevirtual a : (Ldjw;)V
    //   378: aload_0
    //   379: invokevirtual f : ()Ldkw;
    //   382: invokevirtual D : ()Ldky;
    //   385: ldc_w 'Fetching config failed. code, error'
    //   388: iload_2
    //   389: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   392: aload_3
    //   393: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   396: aload_0
    //   397: invokevirtual j : ()Ldlp;
    //   400: aload_1
    //   401: invokevirtual c : (Ljava/lang/String;)V
    //   404: aload_0
    //   405: invokevirtual e : ()Ldlh;
    //   408: getfield d : Ldlk;
    //   411: aload_0
    //   412: invokevirtual t : ()Lcvo;
    //   415: invokeinterface a : ()J
    //   420: invokevirtual a : (J)V
    //   423: iload_2
    //   424: sipush #503
    //   427: if_icmpeq -> 502
    //   430: iload #7
    //   432: istore #6
    //   434: iload_2
    //   435: sipush #429
    //   438: if_icmpne -> 444
    //   441: goto -> 502
    //   444: iload #6
    //   446: ifeq -> 468
    //   449: aload_0
    //   450: invokevirtual e : ()Ldlh;
    //   453: getfield e : Ldlk;
    //   456: aload_0
    //   457: invokevirtual t : ()Lcvo;
    //   460: invokeinterface a : ()J
    //   465: invokevirtual a : (J)V
    //   468: aload_0
    //   469: invokespecial Q : ()V
    //   472: goto -> 93
    //   475: aload_3
    //   476: ifnonnull -> 108
    //   479: iconst_1
    //   480: istore #6
    //   482: goto -> 71
    //   485: iload_2
    //   486: sipush #404
    //   489: if_icmpeq -> 172
    //   492: iload_2
    //   493: sipush #304
    //   496: if_icmpne -> 218
    //   499: goto -> 172
    //   502: iconst_1
    //   503: istore #6
    //   505: goto -> 444
    // Exception table:
    //   from	to	target	type
    //   37	47	312	finally
    //   76	93	312	finally
    //   93	100	312	finally
    //   131	145	312	finally
    //   149	169	312	finally
    //   172	195	312	finally
    //   218	231	312	finally
    //   244	267	312	finally
    //   274	288	312	finally
    //   288	309	312	finally
    //   322	345	312	finally
    //   348	352	312	finally
    //   355	423	312	finally
    //   449	468	312	finally
    //   468	472	312	finally
  }
  
  protected void a(List<Long> paramList) {
    boolean bool;
    if (!paramList.isEmpty()) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.b(bool);
    if (this.F != null) {
      f().x().a("Set uploading progress before finishing the previous upload");
      return;
    } 
    this.F = new ArrayList<Long>(paramList);
  }
  
  public void a(boolean paramBoolean) {
    Q();
  }
  
  @WorkerThread
  boolean a(int paramInt1, int paramInt2) {
    C();
    if (paramInt1 > paramInt2) {
      f().x().a("Panic: can't downgrade version. Previous, current version", Integer.valueOf(paramInt1), Integer.valueOf(paramInt2));
      return false;
    } 
    if (paramInt1 < paramInt2) {
      if (a(paramInt2, D())) {
        f().D().a("Storage version upgraded. Previous, current version", Integer.valueOf(paramInt1), Integer.valueOf(paramInt2));
        return true;
      } 
    } else {
      return true;
    } 
    f().x().a("Storage version upgrade failed. Previous, current version", Integer.valueOf(paramInt1), Integer.valueOf(paramInt2));
    return false;
  }
  
  @WorkerThread
  boolean a(int paramInt, FileChannel paramFileChannel) {
    boolean bool = true;
    C();
    if (paramFileChannel == null || !paramFileChannel.isOpen()) {
      f().x().a("Bad chanel to read from");
      return false;
    } 
    ByteBuffer byteBuffer = ByteBuffer.allocate(4);
    byteBuffer.putInt(paramInt);
    byteBuffer.flip();
    try {
      paramFileChannel.truncate(0L);
      paramFileChannel.write(byteBuffer);
      paramFileChannel.force(true);
      if (paramFileChannel.size() != 4L) {
        f().x().a("Error writing to channel. Bytes written", Long.valueOf(paramFileChannel.size()));
        return true;
      } 
    } catch (IOException iOException) {
      f().x().a("Failed to write to channel", iOException);
      return false;
    } 
    return bool;
  }
  
  boolean a(long paramLong) {
    return a((String)null, paramLong);
  }
  
  public String b(String paramString) {
    Future<?> future = h().a(new dlx(this, paramString));
    try {
      return (String)future.get(30000L, TimeUnit.MILLISECONDS);
    } catch (TimeoutException timeoutException) {
    
    } catch (InterruptedException interruptedException) {
    
    } catch (ExecutionException executionException) {}
    f().x().a("Failed to get app instance id. appId", dkw.a(paramString), executionException);
    return null;
  }
  
  @WorkerThread
  public void b(zzatd paramzzatd) {
    C();
    a();
    csp.a(paramzzatd);
    csp.a(paramzzatd.a);
    if (TextUtils.isEmpty(paramzzatd.b))
      return; 
    if (!paramzzatd.h) {
      c(paramzzatd);
      return;
    } 
    long l = t().a();
    p().x();
    try {
      a(paramzzatd, l);
      c(paramzzatd);
      if (p().a(paramzzatd.a, "_f") == null) {
        a(new zzauq("_fot", l, Long.valueOf((1L + l / 3600000L) * 3600000L), "auto"), paramzzatd);
        b(paramzzatd, l);
        c(paramzzatd, l);
      } else if (paramzzatd.i) {
        d(paramzzatd, l);
      } 
      p().y();
      return;
    } finally {
      p().z();
    } 
  }
  
  @WorkerThread
  void b(zzatd paramzzatd, long paramLong) {
    C();
    a();
    djw djw = p().b(paramzzatd.a);
    if (djw != null && TextUtils.isEmpty(djw.d()) && paramzzatd != null && !TextUtils.isEmpty(paramzzatd.b)) {
      djw.g(0L);
      p().a(djw);
    } 
    Bundle bundle = new Bundle();
    bundle.putLong("_c", 1L);
    bundle.putLong("_r", 1L);
    bundle.putLong("_uwa", 0L);
    bundle.putLong("_pfo", 0L);
    bundle.putLong("_sys", 0L);
    bundle.putLong("_sysu", 0L);
    if (s().getPackageManager() == null) {
      f().x().a("PackageManager is null, first open report might be inaccurate. appId", dkw.a(paramzzatd.a));
    } else {
      try {
        PackageInfo packageInfo = dgl.b(s()).b(paramzzatd.a, 0);
      } catch (android.content.pm.PackageManager.NameNotFoundException null) {
        f().x().a("Package info is null, first open report might be inaccurate. appId", dkw.a(paramzzatd.a), nameNotFoundException);
        nameNotFoundException = null;
      } 
      if (nameNotFoundException != null && ((PackageInfo)nameNotFoundException).firstInstallTime != 0L && ((PackageInfo)nameNotFoundException).firstInstallTime != ((PackageInfo)nameNotFoundException).lastUpdateTime)
        bundle.putLong("_uwa", 1L); 
      try {
        ApplicationInfo applicationInfo = dgl.b(s()).a(paramzzatd.a, 0);
      } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
        f().x().a("Application info is null, first open report might be inaccurate. appId", dkw.a(paramzzatd.a), nameNotFoundException);
        nameNotFoundException = null;
      } 
      if (nameNotFoundException != null) {
        if ((((ApplicationInfo)nameNotFoundException).flags & 0x1) != 0)
          bundle.putLong("_sys", 1L); 
        if ((((ApplicationInfo)nameNotFoundException).flags & 0x80) != 0)
          bundle.putLong("_sysu", 1L); 
      } 
    } 
    long l = p().h(paramzzatd.a);
    if (l >= 0L)
      bundle.putLong("_pfo", l); 
    a(new zzatq("_f", new zzato(bundle), "auto", paramLong), paramzzatd);
  }
  
  @WorkerThread
  void b(zzatg paramzzatg) {
    zzatd zzatd = a(paramzzatg.b);
    if (zzatd != null)
      b(paramzzatg, zzatd); 
  }
  
  @WorkerThread
  void b(zzatg paramzzatg, zzatd paramzzatd) {
    csp.a(paramzzatg);
    csp.a(paramzzatg.b);
    csp.a(paramzzatg.d);
    csp.a(paramzzatg.d.b);
    C();
    a();
    if (TextUtils.isEmpty(paramzzatd.b))
      return; 
    if (!paramzzatd.h) {
      c(paramzzatd);
      return;
    } 
    p().x();
    try {
      c(paramzzatd);
      zzatg zzatg1 = p().d(paramzzatg.b, paramzzatg.d.b);
      if (zzatg1 != null) {
        f().C().a("Removing conditional user property", paramzzatg.b, paramzzatg.d.b);
        p().e(paramzzatg.b, paramzzatg.d.b);
        if (zzatg1.f)
          p().b(paramzzatg.b, paramzzatg.d.b); 
        if (paramzzatg.l != null) {
          Bundle bundle = null;
          if (paramzzatg.l.b != null)
            bundle = paramzzatg.l.b.b(); 
          b(o().a(paramzzatg.l.a, bundle, zzatg1.c, paramzzatg.l.d, true, false), paramzzatd);
        } 
      } else {
        f().z().a("Conditional user property doesn't exist", dkw.a(paramzzatg.b), paramzzatg.d.b);
      } 
      p().y();
      return;
    } finally {
      p().z();
    } 
  }
  
  @WorkerThread
  void b(zzatq paramzzatq, zzatd paramzzatd) {
    csp.a(paramzzatd);
    csp.a(paramzzatd.a);
    long l = System.nanoTime();
    C();
    a();
    String str = paramzzatd.a;
    if (o().a(paramzzatq, paramzzatd)) {
      boolean bool1;
      boolean bool2;
      dkc dkc;
      Bundle bundle;
      if (!paramzzatd.h) {
        c(paramzzatd);
        return;
      } 
      if (j().b(str, paramzzatq.a)) {
        boolean bool;
        f().z().a("Dropping blacklisted event. appId", dkw.a(str), paramzzatq.a);
        if (o().o(str) || o().p(str)) {
          bool = true;
        } else {
          bool = false;
        } 
        if (!bool && !"_err".equals(paramzzatq.a))
          o().a(11, "_ev", paramzzatq.a, 0); 
        if (bool) {
          null = p().b(str);
          if (null != null) {
            long l2 = Math.max(null.q(), null.p());
            if (Math.abs(t().a() - l2) > d().ac()) {
              f().C().a("Fetching config for blacklisted app");
              a(null);
              return;
            } 
          } 
        } 
        return;
      } 
      if (f().a(2))
        f().D().a("Logging event", null); 
      p().x();
      try {
        bundle = ((zzatq)null).b.b();
        c(paramzzatd);
        if ("_iap".equals(((zzatq)null).a) || "ecommerce_purchase".equals(((zzatq)null).a)) {
          long l3;
          String str1 = bundle.getString("currency");
          if ("ecommerce_purchase".equals(((zzatq)null).a)) {
            double d2 = bundle.getDouble("value") * 1000000.0D;
            double d1 = d2;
            if (d2 == 0.0D)
              d1 = bundle.getLong("value") * 1000000.0D; 
            if (d1 <= 9.223372036854776E18D && d1 >= -9.223372036854776E18D) {
              l3 = Math.round(d1);
            } else {
              f().z().a("Data lost. Currency value is too big. appId", dkw.a(str), Double.valueOf(d1));
              p().y();
              return;
            } 
          } else {
            l3 = bundle.getLong("value");
          } 
          if (!TextUtils.isEmpty(str1)) {
            String str2 = str1.toUpperCase(Locale.US);
            if (str2.matches("[A-Z]{3}")) {
              dot dot1;
              str1 = String.valueOf("_ltv_");
              str2 = String.valueOf(str2);
              if (str2.length() != 0) {
                str1 = str1.concat(str2);
              } else {
                str1 = new String(str1);
              } 
              dot dot2 = p().c(str, str1);
              if (dot2 == null || !(dot2.e instanceof Long)) {
                p().a(str, d().e(str) - 1);
                dot1 = new dot(str, ((zzatq)null).c, str1, t().a(), Long.valueOf(l3));
              } else {
                long l4 = ((Long)dot2.e).longValue();
                dot1 = new dot(str, ((zzatq)null).c, (String)dot1, t().a(), Long.valueOf(l3 + l4));
              } 
              if (!p().a(dot1)) {
                f().x().a("Too many unique user properties are set. Ignoring user property. appId", dkw.a(str), dot1.c, dot1.e);
                o().a(9, (String)null, (String)null, 0);
              } 
            } 
          } 
        } 
        bool1 = dou.a(((zzatq)null).a);
        bool2 = "_err".equals(((zzatq)null).a);
        dkc = p().a(H(), str, true, bool1, false, bool2, false);
        long l2 = dkc.b - d().G();
      } finally {
        p().z();
      } 
      if (bool1) {
        long l2 = dkc.a - d().H();
        if (l2 > 0L) {
          if (l2 % 1000L == 1L)
            f().x().a("Data loss. Too many public events logged. appId, count", dkw.a(str), Long.valueOf(dkc.a)); 
          o().a(16, "_ev", paramzzatq.a, 0);
          p().y();
          p().z();
          return;
        } 
      } 
      if (bool2) {
        long l2 = dkc.d - d().a(paramzzatd.a);
        if (l2 > 0L) {
          if (l2 == 1L)
            f().x().a("Too many error events logged. appId, count", dkw.a(str), Long.valueOf(dkc.d)); 
          p().y();
          p().z();
          return;
        } 
      } 
      o().a(bundle, "_o", paramzzatq.c);
      if (o().m(str)) {
        o().a(bundle, "_dbg", Long.valueOf(1L));
        o().a(bundle, "_r", Long.valueOf(1L));
      } 
      long l1 = p().c(str);
      if (l1 > 0L)
        f().z().a("Data lost. Too many events stored on disk, deleted. appId", dkw.a(str), Long.valueOf(l1)); 
      dki dki = new dki(this, paramzzatq.c, str, paramzzatq.a, paramzzatq.d, 0L, bundle);
      dkj dkj = p().a(str, dki.b);
      if (dkj == null) {
        l1 = p().j(str);
        d().F();
        if (l1 >= 500L) {
          f().x().a("Too many event names used, ignoring event. appId, name, supported count", dkw.a(str), dki.b, Integer.valueOf(d().F()));
          o().a(8, (String)null, (String)null, 0);
          p().z();
          return;
        } 
        dkj = new dkj(str, dki.b, 0L, 0L, dki.d);
      } else {
        dki = dki.a(this, dkj.e);
        dkj = dkj.a(dki.d);
      } 
      p().a(dkj);
      a(dki, paramzzatd);
      p().y();
      if (f().a(2))
        f().D().a("Event recorded", dki); 
      p().z();
      Q();
      f().D().a("Background event processing time, ms", Long.valueOf((System.nanoTime() - l + 500000L) / 1000000L));
      return;
    } 
  }
  
  @WorkerThread
  void b(zzauq paramzzauq, zzatd paramzzatd) {
    C();
    a();
    if (TextUtils.isEmpty(paramzzatd.b))
      return; 
    if (!paramzzatd.h) {
      c(paramzzatd);
      return;
    } 
    f().C().a("Removing user property", paramzzauq.b);
    p().x();
    try {
      c(paramzzatd);
      p().b(paramzzatd.a, paramzzauq.b);
      p().y();
      f().C().a("User property removed", paramzzauq.b);
      return;
    } finally {
      p().z();
    } 
  }
  
  @WorkerThread
  protected boolean b() {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: invokevirtual a : ()V
    //   6: aload_0
    //   7: invokevirtual C : ()V
    //   10: aload_0
    //   11: getfield B : Ljava/lang/Boolean;
    //   14: ifnull -> 67
    //   17: aload_0
    //   18: getfield C : J
    //   21: lconst_0
    //   22: lcmp
    //   23: ifeq -> 67
    //   26: aload_0
    //   27: getfield B : Ljava/lang/Boolean;
    //   30: ifnull -> 198
    //   33: aload_0
    //   34: getfield B : Ljava/lang/Boolean;
    //   37: invokevirtual booleanValue : ()Z
    //   40: ifne -> 198
    //   43: aload_0
    //   44: invokevirtual t : ()Lcvo;
    //   47: invokeinterface b : ()J
    //   52: aload_0
    //   53: getfield C : J
    //   56: lsub
    //   57: invokestatic abs : (J)J
    //   60: ldc2_w 1000
    //   63: lcmp
    //   64: ifle -> 198
    //   67: aload_0
    //   68: aload_0
    //   69: invokevirtual t : ()Lcvo;
    //   72: invokeinterface b : ()J
    //   77: putfield C : J
    //   80: aload_0
    //   81: invokevirtual d : ()Ldka;
    //   84: invokevirtual V : ()Z
    //   87: pop
    //   88: iload_2
    //   89: istore_1
    //   90: aload_0
    //   91: invokevirtual o : ()Ldou;
    //   94: ldc_w 'android.permission.INTERNET'
    //   97: invokevirtual k : (Ljava/lang/String;)Z
    //   100: ifeq -> 159
    //   103: iload_2
    //   104: istore_1
    //   105: aload_0
    //   106: invokevirtual o : ()Ldou;
    //   109: ldc_w 'android.permission.ACCESS_NETWORK_STATE'
    //   112: invokevirtual k : (Ljava/lang/String;)Z
    //   115: ifeq -> 159
    //   118: aload_0
    //   119: invokevirtual s : ()Landroid/content/Context;
    //   122: invokestatic b : (Landroid/content/Context;)Ldgk;
    //   125: invokevirtual a : ()Z
    //   128: ifne -> 157
    //   131: iload_2
    //   132: istore_1
    //   133: aload_0
    //   134: invokevirtual s : ()Landroid/content/Context;
    //   137: iconst_0
    //   138: invokestatic a : (Landroid/content/Context;Z)Z
    //   141: ifeq -> 159
    //   144: iload_2
    //   145: istore_1
    //   146: aload_0
    //   147: invokevirtual s : ()Landroid/content/Context;
    //   150: iconst_0
    //   151: invokestatic a : (Landroid/content/Context;Z)Z
    //   154: ifeq -> 159
    //   157: iconst_1
    //   158: istore_1
    //   159: aload_0
    //   160: iload_1
    //   161: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   164: putfield B : Ljava/lang/Boolean;
    //   167: aload_0
    //   168: getfield B : Ljava/lang/Boolean;
    //   171: invokevirtual booleanValue : ()Z
    //   174: ifeq -> 198
    //   177: aload_0
    //   178: aload_0
    //   179: invokevirtual o : ()Ldou;
    //   182: aload_0
    //   183: invokevirtual x : ()Ldks;
    //   186: invokevirtual y : ()Ljava/lang/String;
    //   189: invokevirtual h : (Ljava/lang/String;)Z
    //   192: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   195: putfield B : Ljava/lang/Boolean;
    //   198: aload_0
    //   199: getfield B : Ljava/lang/Boolean;
    //   202: invokevirtual booleanValue : ()Z
    //   205: ireturn
  }
  
  @WorkerThread
  public byte[] b(@NonNull zzatq paramzzatq, @Size(min = 1L) String paramString) {
    djw djw;
    dpl dpl;
    dpi dpi;
    a();
    C();
    J();
    csp.a(paramzzatq);
    csp.a(paramString);
    dpk dpk = new dpk();
    p().x();
    try {
      long l;
      djw = p().b(paramString);
      if (djw == null) {
        f().C().a("Log and bundle not available. package_name", paramString);
        return new byte[0];
      } 
      if (!djw.n()) {
        f().C().a("Log and bundle disabled. package_name", paramString);
        return new byte[0];
      } 
      dpl = new dpl();
      dpk.a = new dpl[] { dpl };
      dpl.a = Integer.valueOf(1);
      dpl.i = "android";
      dpl.o = djw.b();
      dpl.n = djw.k();
      dpl.p = djw.i();
      dpl.C = Integer.valueOf((int)djw.j());
      dpl.q = Long.valueOf(djw.l());
      dpl.y = djw.d();
      dpl.v = Long.valueOf(djw.m());
      Pair<String, Boolean> pair = e().a(djw.b());
      if (!TextUtils.isEmpty((CharSequence)pair.first)) {
        dpl.s = (String)pair.first;
        dpl.t = (Boolean)pair.second;
      } 
      dpl.k = w().x();
      dpl.j = w().y();
      dpl.m = Integer.valueOf((int)w().z());
      dpl.l = w().A();
      dpl.u = djw.c();
      dpl.B = djw.f();
      List<dot> list = p().a(djw.b());
      dpl.c = new dpn[list.size()];
      int i;
      for (i = 0; i < list.size(); i++) {
        dpn dpn = new dpn();
        dpl.c[i] = dpn;
        dpn.b = ((dot)list.get(i)).c;
        dpn.a = Long.valueOf(((dot)list.get(i)).d);
        o().a(dpn, ((dot)list.get(i)).e);
      } 
      Bundle bundle = paramzzatq.b.b();
      if ("_iap".equals(paramzzatq.a)) {
        bundle.putLong("_c", 1L);
        f().C().a("Marking in-app purchase as real-time");
        bundle.putLong("_r", 1L);
      } 
      bundle.putString("_o", paramzzatq.c);
      if (o().m(dpl.o)) {
        o().a(bundle, "_dbg", Long.valueOf(1L));
        o().a(bundle, "_r", Long.valueOf(1L));
      } 
      dkj dkj = p().a(paramString, paramzzatq.a);
      if (dkj == null) {
        dkj = new dkj(paramString, paramzzatq.a, 1L, 0L, paramzzatq.d);
        p().a(dkj);
        l = 0L;
      } else {
        l = dkj.e;
        dkj = dkj.a(paramzzatq.d).a();
        p().a(dkj);
      } 
      dki dki = new dki(this, paramzzatq.c, paramString, paramzzatq.a, paramzzatq.d, l, bundle);
      dpi = new dpi();
      dpl.b = new dpi[] { dpi };
      dpi.c = Long.valueOf(dki.d);
      dpi.b = dki.b;
      dpi.d = Long.valueOf(dki.e);
      dpi.a = new dpj[dki.f.a()];
      Iterator<String> iterator = dki.f.iterator();
    } finally {
      p().z();
    } 
    dpl.A = a(djw.b(), dpl.c, dpl.b);
    dpl.e = dpi.c;
    dpl.f = dpi.c;
    long l1 = djw.h();
    if (l1 != 0L) {
      Long long_ = Long.valueOf(l1);
    } else {
      paramzzatq = null;
    } 
    dpl.h = (Long)paramzzatq;
    long l2 = djw.g();
    if (l2 != 0L)
      l1 = l2; 
    if (l1 != 0L) {
      Long long_ = Long.valueOf(l1);
    } else {
      paramzzatq = null;
    } 
    dpl.g = (Long)paramzzatq;
    djw.r();
    dpl.w = Integer.valueOf((int)djw.o());
    dpl.r = Long.valueOf(d().U());
    dpl.d = Long.valueOf(t().a());
    dpl.z = Boolean.TRUE;
    djw.a(dpl.e.longValue());
    djw.b(dpl.f.longValue());
    p().a(djw);
    p().y();
    p().z();
    try {
      null = new byte[dpk.g()];
      dqw dqw = dqw.a(null);
      dpk.a(dqw);
      dqw.b();
      return o().a(null);
    } catch (IOException iOException) {
      f().x().a("Data loss. Failed to bundle and serialize. appId", dkw.a(paramString), iOException);
      return null;
    } 
  }
  
  @WorkerThread
  protected void c() {
    C();
    p().E();
    if ((e()).c.a() == 0L)
      (e()).c.a(t().a()); 
    if (!b()) {
      if (G()) {
        if (!o().k("android.permission.INTERNET"))
          f().x().a("App is missing INTERNET permission"); 
        if (!o().k("android.permission.ACCESS_NETWORK_STATE"))
          f().x().a("App is missing ACCESS_NETWORK_STATE permission"); 
        d().V();
        if (!dgl.b(s()).a()) {
          if (!dlm.a(s(), false))
            f().x().a("AppMeasurementReceiver not registered/enabled"); 
          if (!dog.a(s(), false))
            f().x().a("AppMeasurementService not registered/enabled"); 
        } 
        f().x().a("Uploading is not possible. App measurement disabled");
      } 
    } else {
      d().V();
      if (!TextUtils.isEmpty(x().y())) {
        String str = e().A();
        if (str == null) {
          e().c(x().y());
        } else if (!str.equals(x().y())) {
          f().B().a("Rechecking which service to use due to a GMP App Id change");
          e().D();
          this.r.C();
          this.r.A();
          e().c(x().y());
        } 
      } 
      d().V();
      if (!TextUtils.isEmpty(x().y()))
        l().z(); 
    } 
    Q();
  }
  
  @WorkerThread
  void c(zzatd paramzzatd, long paramLong) {
    Bundle bundle = new Bundle();
    bundle.putLong("_et", 1L);
    a(new zzatq("_e", new zzato(bundle), "auto", paramLong), paramzzatd);
  }
  
  public dka d() {
    return this.d;
  }
  
  @WorkerThread
  void d(zzatd paramzzatd, long paramLong) {
    a(new zzatq("_cd", new zzato(new Bundle()), "auto", paramLong), paramzzatd);
  }
  
  public dlh e() {
    a(this.e);
    return this.e;
  }
  
  public dkw f() {
    b(this.f);
    return this.f;
  }
  
  public dkw g() {
    return (this.f != null && this.f.Q()) ? this.f : null;
  }
  
  public dlq h() {
    b(this.g);
    return this.g;
  }
  
  public dok i() {
    b(this.h);
    return this.h;
  }
  
  public dlp j() {
    b(this.i);
    return this.i;
  }
  
  dlq k() {
    return this.g;
  }
  
  public dmw l() {
    b((dmu)this.t);
    return this.t;
  }
  
  public AppMeasurement m() {
    return this.j;
  }
  
  public eif n() {
    return this.k;
  }
  
  public dou o() {
    a(this.l);
    return this.l;
  }
  
  public dkb p() {
    b(this.m);
    return this.m;
  }
  
  public dkt q() {
    b(this.n);
    return this.n;
  }
  
  public dla r() {
    b(this.o);
    return this.o;
  }
  
  public Context s() {
    return this.c;
  }
  
  public cvo t() {
    return this.p;
  }
  
  public dnk u() {
    b(this.q);
    return this.q;
  }
  
  public dno v() {
    b(this.r);
    return this.r;
  }
  
  public dkh w() {
    b(this.s);
    return this.s;
  }
  
  public dks x() {
    b(this.u);
    return this.u;
  }
  
  public dlf y() {
    if (this.v == null)
      throw new IllegalStateException("Network broadcast receiver not created"); 
    return this.v;
  }
  
  public doq z() {
    b(this.w);
    return this.w;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dlv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */