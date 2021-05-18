import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class mxm implements ejy<Date> {
  private String a;
  
  public mxm(String paramString) {
    this.a = paramString;
  }
  
  public static Date a(String paramString1, String paramString2) {
    try {
      if (!TextUtils.isEmpty(paramString1))
        return (new SimpleDateFormat(paramString2, new Locale("pt", "BR"))).parse(paramString1); 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
    } 
    return null;
  }
  
  public Date a(ejz paramejz, Type paramType, ejx paramejx) {
    return a(paramejz.d(), this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mxm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */