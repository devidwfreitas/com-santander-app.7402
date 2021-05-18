import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public class dkh extends dmu {
  private long a;
  
  private String b;
  
  private Boolean c;
  
  dkh(dlv paramdlv) {
    super(paramdlv);
  }
  
  public String A() {
    R();
    return this.b;
  }
  
  protected void a() {
    Calendar calendar = Calendar.getInstance();
    TimeUnit timeUnit = TimeUnit.MINUTES;
    int i = calendar.get(15);
    this.a = timeUnit.convert((calendar.get(16) + i), TimeUnit.MILLISECONDS);
    Locale locale = Locale.getDefault();
    String str1 = String.valueOf(locale.getLanguage().toLowerCase(Locale.ENGLISH));
    String str2 = String.valueOf(locale.getCountry().toLowerCase(Locale.ENGLISH));
    this.b = (new StringBuilder(String.valueOf(str1).length() + 1 + String.valueOf(str2).length())).append(str1).append("-").append(str2).toString();
  }
  
  public boolean a(Context paramContext) {
    if (this.c == null) {
      w().V();
      this.c = Boolean.valueOf(false);
      try {
        PackageManager packageManager = paramContext.getPackageManager();
        if (packageManager != null) {
          packageManager.getPackageInfo("com.google.android.gms", 128);
          this.c = Boolean.valueOf(true);
        } 
      } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {}
    } 
    return this.c.booleanValue();
  }
  
  public String x() {
    R();
    return Build.MODEL;
  }
  
  public String y() {
    R();
    return Build.VERSION.RELEASE;
  }
  
  public long z() {
    R();
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dkh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */