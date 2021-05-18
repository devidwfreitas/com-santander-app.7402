import android.app.Activity;
import android.app.Application;
import java.util.Map;
import java.util.Properties;

public class gu {
  private static gu a;
  
  private gx b = new gx();
  
  public static gu a() {
    if (a == null)
      a = new gu(); 
    return a;
  }
  
  public void a(Activity paramActivity, Map<String, ?> paramMap) {
    this.b.a(paramActivity, paramMap);
  }
  
  public void a(Application paramApplication, Properties paramProperties) {
    gx gx1 = this.b;
    gx.a(paramApplication, paramProperties);
  }
  
  public void a(String paramString, Map<String, ?> paramMap) {
    this.b.a(paramString, paramMap);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */