import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.support.annotation.Size;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;

public class dka extends dmt {
  static final String a = String.valueOf(cwn.c / 1000).replaceAll("(\\d+)(\\d)(\\d\\d)", "$1.$2.$3");
  
  private Boolean b;
  
  dka(dlv paramdlv) {
    super(paramdlv);
  }
  
  int A() {
    return 40;
  }
  
  int B() {
    return 100;
  }
  
  int C() {
    return 256;
  }
  
  public int D() {
    return 36;
  }
  
  public int E() {
    return 2048;
  }
  
  int F() {
    return 500;
  }
  
  public long G() {
    return ((Integer)dkn.q.b()).intValue();
  }
  
  public long H() {
    return ((Integer)dkn.s.b()).intValue();
  }
  
  int I() {
    return 25;
  }
  
  int J() {
    return 1000;
  }
  
  int K() {
    return 25;
  }
  
  int L() {
    return 1000;
  }
  
  long M() {
    return 15552000000L;
  }
  
  long N() {
    return 15552000000L;
  }
  
  long O() {
    return 3600000L;
  }
  
  long P() {
    return 60000L;
  }
  
  long Q() {
    return 61000L;
  }
  
  long R() {
    return ((Long)dkn.M.b()).longValue();
  }
  
  public String S() {
    return "google_app_measurement.db";
  }
  
  String T() {
    return "google_app_measurement_local.db";
  }
  
  public long U() {
    return 10298L;
  }
  
  public boolean V() {
    return false;
  }
  
  public boolean W() {
    // Byte code:
    //   0: aload_0
    //   1: getfield b : Ljava/lang/Boolean;
    //   4: ifnonnull -> 87
    //   7: aload_0
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield b : Ljava/lang/Boolean;
    //   13: ifnonnull -> 85
    //   16: aload_0
    //   17: invokevirtual n : ()Landroid/content/Context;
    //   20: invokevirtual getApplicationInfo : ()Landroid/content/pm/ApplicationInfo;
    //   23: astore_3
    //   24: invokestatic a : ()Ljava/lang/String;
    //   27: astore_2
    //   28: aload_3
    //   29: ifnull -> 59
    //   32: aload_3
    //   33: getfield processName : Ljava/lang/String;
    //   36: astore_3
    //   37: aload_3
    //   38: ifnull -> 95
    //   41: aload_3
    //   42: aload_2
    //   43: invokevirtual equals : (Ljava/lang/Object;)Z
    //   46: ifeq -> 95
    //   49: iconst_1
    //   50: istore_1
    //   51: aload_0
    //   52: iload_1
    //   53: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   56: putfield b : Ljava/lang/Boolean;
    //   59: aload_0
    //   60: getfield b : Ljava/lang/Boolean;
    //   63: ifnonnull -> 85
    //   66: aload_0
    //   67: getstatic java/lang/Boolean.TRUE : Ljava/lang/Boolean;
    //   70: putfield b : Ljava/lang/Boolean;
    //   73: aload_0
    //   74: invokevirtual u : ()Ldkw;
    //   77: invokevirtual x : ()Ldky;
    //   80: ldc 'My process not in the list of running processes'
    //   82: invokevirtual a : (Ljava/lang/String;)V
    //   85: aload_0
    //   86: monitorexit
    //   87: aload_0
    //   88: getfield b : Ljava/lang/Boolean;
    //   91: invokevirtual booleanValue : ()Z
    //   94: ireturn
    //   95: iconst_0
    //   96: istore_1
    //   97: goto -> 51
    //   100: astore_2
    //   101: aload_0
    //   102: monitorexit
    //   103: aload_2
    //   104: athrow
    // Exception table:
    //   from	to	target	type
    //   9	28	100	finally
    //   32	37	100	finally
    //   41	49	100	finally
    //   51	59	100	finally
    //   59	85	100	finally
    //   85	87	100	finally
    //   101	103	100	finally
  }
  
  public boolean X() {
    Boolean bool = g("firebase_analytics_collection_deactivated");
    return (bool != null && bool.booleanValue());
  }
  
  public Boolean Y() {
    return g("firebase_analytics_collection_enabled");
  }
  
  public boolean Z() {
    return ddc.b();
  }
  
  public int a(@Size(min = 1L) String paramString) {
    return Math.max(0, Math.min(1000000, b(paramString, dkn.r)));
  }
  
  public long a(String paramString, dko<Long> paramdko) {
    if (paramString == null)
      return ((Long)paramdko.b()).longValue(); 
    paramString = r().a(paramString, paramdko.a());
    if (TextUtils.isEmpty(paramString))
      return ((Long)paramdko.b()).longValue(); 
    try {
      return ((Long)paramdko.a(Long.valueOf(Long.valueOf(paramString).longValue()))).longValue();
    } catch (NumberFormatException numberFormatException) {
      return ((Long)paramdko.b()).longValue();
    } 
  }
  
  String a() {
    return dkn.g.b();
  }
  
  public String a(String paramString1, String paramString2) {
    Uri.Builder builder1 = new Uri.Builder();
    Uri.Builder builder2 = builder1.scheme(dkn.k.b()).encodedAuthority(dkn.l.b());
    paramString1 = String.valueOf(paramString1);
    if (paramString1.length() != 0) {
      paramString1 = "config/app/".concat(paramString1);
      builder2.path(paramString1).appendQueryParameter("app_instance_id", paramString2).appendQueryParameter("platform", "android").appendQueryParameter("gmp_version", String.valueOf(10298L));
      return builder1.build().toString();
    } 
    paramString1 = new String("config/app/");
    builder2.path(paramString1).appendQueryParameter("app_instance_id", paramString2).appendQueryParameter("platform", "android").appendQueryParameter("gmp_version", String.valueOf(10298L));
    return builder1.build().toString();
  }
  
  public long aa() {
    return ((Long)dkn.J.b()).longValue();
  }
  
  public long ab() {
    return ((Long)dkn.E.b()).longValue();
  }
  
  public long ac() {
    return ((Long)dkn.F.b()).longValue();
  }
  
  public long ad() {
    return 1000L;
  }
  
  public long ae() {
    return Math.max(0L, ((Long)dkn.i.b()).longValue());
  }
  
  public int af() {
    return Math.max(0, ((Integer)dkn.o.b()).intValue());
  }
  
  public int ag() {
    return Math.max(1, ((Integer)dkn.p.b()).intValue());
  }
  
  public int ah() {
    return 100000;
  }
  
  public String ai() {
    return dkn.w.b();
  }
  
  public long aj() {
    return ((Long)dkn.j.b()).longValue();
  }
  
  public long ak() {
    return Math.max(0L, ((Long)dkn.x.b()).longValue());
  }
  
  public long al() {
    return Math.max(0L, ((Long)dkn.z.b()).longValue());
  }
  
  public long am() {
    return Math.max(0L, ((Long)dkn.A.b()).longValue());
  }
  
  public long an() {
    return Math.max(0L, ((Long)dkn.B.b()).longValue());
  }
  
  public long ao() {
    return Math.max(0L, ((Long)dkn.C.b()).longValue());
  }
  
  public long ap() {
    return Math.max(0L, ((Long)dkn.D.b()).longValue());
  }
  
  public long aq() {
    return ((Long)dkn.y.b()).longValue();
  }
  
  public long ar() {
    return Math.max(0L, ((Long)dkn.G.b()).longValue());
  }
  
  public long as() {
    return Math.max(0L, ((Long)dkn.H.b()).longValue());
  }
  
  public int at() {
    return Math.min(20, Math.max(0, ((Integer)dkn.I.b()).intValue()));
  }
  
  public String au() {
    try {
      return (String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class, String.class }).invoke(null, new Object[] { "debug.firebase.analytics.app", "" });
    } catch (ClassNotFoundException classNotFoundException) {
      u().x().a("Could not find SystemProperties class", classNotFoundException);
    } catch (NoSuchMethodException noSuchMethodException) {
      u().x().a("Could not find SystemProperties.get() method", noSuchMethodException);
    } catch (IllegalAccessException illegalAccessException) {
      u().x().a("Could not access SystemProperties.get()", illegalAccessException);
    } catch (InvocationTargetException invocationTargetException) {
      u().x().a("SystemProperties.get() threw an exception", invocationTargetException);
    } 
    return "";
  }
  
  public int b(@Size(min = 1L) String paramString) {
    return b(paramString, dkn.t);
  }
  
  public int b(String paramString, dko<Integer> paramdko) {
    if (paramString == null)
      return ((Integer)paramdko.b()).intValue(); 
    paramString = r().a(paramString, paramdko.a());
    if (TextUtils.isEmpty(paramString))
      return ((Integer)paramdko.b()).intValue(); 
    try {
      return ((Integer)paramdko.a(Integer.valueOf(Integer.valueOf(paramString).intValue()))).intValue();
    } catch (NumberFormatException numberFormatException) {
      return ((Integer)paramdko.b()).intValue();
    } 
  }
  
  public int c(@Size(min = 1L) String paramString) {
    return b(paramString, dkn.u);
  }
  
  long d(String paramString) {
    return a(paramString, dkn.h);
  }
  
  int e(String paramString) {
    return b(paramString, dkn.K);
  }
  
  int f(String paramString) {
    return Math.max(0, Math.min(2000, b(paramString, dkn.L)));
  }
  
  @Nullable
  Boolean g(@Size(min = 1L) String paramString) {
    ApplicationInfo applicationInfo;
    Boolean bool = null;
    csp.a(paramString);
    try {
      if (n().getPackageManager() == null) {
        u().x().a("Failed to load metadata: PackageManager is null");
        return null;
      } 
      applicationInfo = dgl.b(n()).a(n().getPackageName(), 128);
      if (applicationInfo == null) {
        u().x().a("Failed to load metadata: ApplicationInfo is null");
        return null;
      } 
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      u().x().a("Failed to load metadata: Package name not found", nameNotFoundException);
      return null;
    } 
    if (applicationInfo.metaData == null) {
      u().x().a("Failed to load metadata: Metadata bundle is null");
      return null;
    } 
    if (applicationInfo.metaData.containsKey((String)nameNotFoundException)) {
      boolean bool1 = applicationInfo.metaData.getBoolean((String)nameNotFoundException);
      bool = Boolean.valueOf(bool1);
    } 
    return bool;
  }
  
  public int h(String paramString) {
    return b(paramString, dkn.m);
  }
  
  public int i(String paramString) {
    return Math.max(0, b(paramString, dkn.n));
  }
  
  public int j(String paramString) {
    return Math.max(0, Math.min(1000000, b(paramString, dkn.v)));
  }
  
  public int x() {
    return 25;
  }
  
  public int y() {
    return 40;
  }
  
  public int z() {
    return 24;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dka.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */