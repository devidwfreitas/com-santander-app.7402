import android.content.Context;
import android.util.Log;
import java.util.Map;

public final class clk extends clp {
  private final Context a;
  
  private final String b;
  
  private final Map<String, Object> c;
  
  public clk(Context paramContext, String paramString) {
    this.a = paramContext;
    this.b = paramString;
    this.c = null;
  }
  
  public clk(Context paramContext, String paramString, Map<String, Object> paramMap) {
    this.a = paramContext;
    this.b = paramString;
    this.c = paramMap;
  }
  
  public static void a(Context paramContext, String paramString) {
    a(paramContext, paramString, null);
  }
  
  public static void a(Context paramContext, String paramString, Map<String, Object> paramMap) {
    (new clk(paramContext, paramString, paramMap)).a();
  }
  
  public void a() {
    cmf cmf = cmf.a(this.a);
    cmf.c(this.b);
    try {
      cms cms = (new cms()).a(this.b).a().a(this.c).a(cmf.d(this.b));
      a(this.a, cms, false, true, true);
      return;
    } catch (Exception exception) {
      Log.e("GoogleConversionReporter", "Error sending ping", exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\clk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */