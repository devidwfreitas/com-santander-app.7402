import android.annotation.SuppressLint;
import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Date;

@SuppressLint({"SimpleDateFormat"})
public class gpl {
  public static String a(String paramString1, String paramString2, String paramString3) {
    return a(a(paramString1, paramString2), paramString3);
  }
  
  public static String a(Date paramDate, String paramString) {
    return (new SimpleDateFormat(paramString)).format(paramDate);
  }
  
  public static Date a(String paramString1, String paramString2) {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(paramString2);
    try {
      return simpleDateFormat.parse(paramString1);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */