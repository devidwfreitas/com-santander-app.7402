import android.content.Context;
import android.os.Bundle;
import java.util.Locale;

class bme {
  private static final String a = bme.class.getCanonicalName();
  
  private static final long[] b = new long[] { 
      300000L, 900000L, 1800000L, 3600000L, 21600000L, 43200000L, 86400000L, 172800000L, 259200000L, 604800000L, 
      1209600000L, 1814400000L, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L };
  
  private static int a(long paramLong) {
    int i;
    for (i = 0; i < b.length && b[i] < paramLong; i++);
    return i;
  }
  
  private static void a() {
    bpu.a(bjb.APP_EVENTS, a, "Clock skew detected");
  }
  
  public static void a(Context paramContext, String paramString1, bmd parambmd, String paramString2) {
    String str;
    Long long_1 = Long.valueOf(parambmd.g() - parambmd.d().longValue());
    Long long_2 = long_1;
    if (long_1.longValue() < 0L) {
      long_2 = Long.valueOf(0L);
      a();
    } 
    Long long_3 = Long.valueOf(parambmd.i());
    long_1 = long_3;
    if (long_3.longValue() < 0L) {
      a();
      long_1 = Long.valueOf(0L);
    } 
    Bundle bundle = new Bundle();
    bundle.putInt("fb_mobile_app_interruptions", parambmd.e());
    bundle.putString("fb_mobile_time_between_sessions", String.format(Locale.ROOT, "session_quanta_%d", new Object[] { Integer.valueOf(a(long_2.longValue())) }));
    bmf bmf = parambmd.j();
    if (bmf != null) {
      str = bmf.toString();
    } else {
      str = "Unclassified";
    } 
    bundle.putString("fb_mobile_launch_source", str);
    bundle.putLong("_logTime", parambmd.d().longValue() / 1000L);
    (new bmc(paramString1, paramString2, null)).a("fb_mobile_deactivate_app", (long_1.longValue() / 1000L), bundle);
  }
  
  public static void a(Context paramContext, String paramString1, bmf parambmf, String paramString2) {
    String str;
    if (parambmf != null) {
      str = parambmf.toString();
    } else {
      str = "Unclassified";
    } 
    Bundle bundle = new Bundle();
    bundle.putString("fb_mobile_launch_source", str);
    bmc bmc = new bmc(paramString1, paramString2, null);
    bmc.a("fb_mobile_activate_app", bundle);
    if (bla.a() != blf.EXPLICIT_ONLY)
      bmc.b(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bme.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */