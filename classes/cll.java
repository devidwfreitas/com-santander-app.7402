import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.util.Map;

public class cll extends clp {
  private final Context a;
  
  private String b;
  
  private Map<String, String> c;
  
  private cll(Context paramContext, String paramString, Map<String, String> paramMap) {
    this.a = paramContext;
    this.b = paramString;
    this.c = paramMap;
  }
  
  public static void a(Context paramContext, String paramString, Map<String, String> paramMap) {
    (new cll(cmn.<Context>a(paramContext), cmn.a(paramString), paramMap)).a();
  }
  
  public void a() {
    if (TextUtils.isEmpty(this.b)) {
      Log.e("GoogleConversionReporter", "Error sending activity ping with empty ad unit id.");
      return;
    } 
    try {
      cms cms = (new cms()).a(cmt.a).a(this.c).c(this.b);
      a(this.a, cms, false, true, false);
      return;
    } catch (Exception exception) {
      Log.e("GoogleConversionReporter", "Error sending ping", exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cll.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */