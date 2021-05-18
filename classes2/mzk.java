import android.app.Activity;
import android.util.Log;
import java.util.Properties;

public class mzk {
  private Activity a;
  
  private ffm b;
  
  private gkv c;
  
  public mzk(Activity paramActivity) {
    this.a = paramActivity;
    this.b = ffm.a(paramActivity);
    this.b.a(c());
  }
  
  public static Properties c() {
    Properties properties = new Properties();
    properties.setProperty("Configuration-key", String.valueOf(2));
    return properties;
  }
  
  public mzl a() {
    String str = this.b.t();
    try {
      this.b.u();
    } catch (IllegalStateException illegalStateException) {
      Log.e("Error", illegalStateException.toString());
    } 
    return (new ejm()).<mzl>a(str, mzl.class);
  }
  
  public String b() {
    return this.b.t();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mzk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */