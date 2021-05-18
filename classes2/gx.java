import android.app.Activity;
import android.app.Application;
import android.content.SharedPreferences;
import android.os.Build;
import java.util.Map;
import java.util.Properties;

public class gx implements gw {
  protected static final String a = "main";
  
  private static String b;
  
  private static String c;
  
  private static String d;
  
  private static final String e = "tealium_init_count";
  
  private static final String f = "tealium_initialized";
  
  private static final String g = "TealiumService";
  
  private static njn a() {
    return new gy();
  }
  
  public static void a(Application paramApplication, Properties paramProperties) {
    a(paramProperties);
    if (Build.VERSION.SDK_INT >= 19);
    nkj nkj = nkj.a(paramApplication, d, b, c);
    nkj.j().add(b());
    nkj.i().add(c());
    nkg nkg = nkg.a("main", nkj);
    nkg.a(d());
    SharedPreferences sharedPreferences = nkg.e().b();
    sharedPreferences.edit().putInt("tealium_init_count", sharedPreferences.getInt("tealium_init_count", 0) + 1).commit();
    nkg.e().a().put("tealium_initialized", Long.valueOf(System.currentTimeMillis()));
  }
  
  private static void a(Properties paramProperties) {
    if (paramProperties.getProperty("profile") == null)
      throw new gv("profile key not found"); 
    if (paramProperties.getProperty("environment") == null)
      throw new gv("environment key not found"); 
    if (paramProperties.getProperty("account") == null)
      throw new gv("account key not found"); 
    d = paramProperties.getProperty("account");
    b = paramProperties.getProperty("tealiiumProfile");
    c = paramProperties.getProperty("tealiumEnvironment");
  }
  
  private static njo b() {
    return new gz();
  }
  
  private static nkd c() {
    return new ha();
  }
  
  private static njq d() {
    return new hb("logger", "Logs dispatches");
  }
  
  public void a(Activity paramActivity, Map<String, ?> paramMap) {
    nkg nkg = nkg.b("main");
    if (nkg != null)
      nkg.a(paramActivity.getClass().getName(), paramMap); 
  }
  
  public void a(String paramString, Map<String, ?> paramMap) {
    nkg nkg = nkg.b("main");
    if (nkg != null)
      nkg.b(paramString, paramMap); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */