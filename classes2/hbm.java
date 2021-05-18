import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

public abstract class hbm {
  public miq a = miq.C();
  
  public static InputStream c(String paramString1, String paramString2) {
    return new ByteArrayInputStream(paramString1.getBytes(paramString2));
  }
  
  public String d(String paramString) {
    String str2 = "false";
    String str1 = str2;
    if (paramString != null) {
      str1 = str2;
      if (!paramString.equals(""))
        try {
          return Boolean.valueOf(paramString).toString();
        } catch (Exception exception) {
          Log.e("Error", exception.toString());
          return "false";
        }  
    } 
    return str1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */