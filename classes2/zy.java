import android.util.Log;
import java.util.Map;

public class zy {
  private static final String a = "INV_ANALYTICS";
  
  public static void a(String paramString) {
    Log.i("INV_ANALYTICS", "stopApplicationTransaction --> transactionName: " + paramString);
    zs.a().a(paramString);
  }
  
  public static void a(String paramString, double paramDouble) {
    Log.i("INV_ANALYTICS", "logNumericMetric --> name: " + paramString + " value: " + String.valueOf(paramDouble));
    zs.a().a(paramString, paramDouble);
  }
  
  public static void a(String paramString1, String paramString2) {
    Log.i("INV_ANALYTICS", "startApplicationTransaction --> transactionName: " + paramString1 + " serviceName: " + paramString2);
    zs.a().b(paramString1, paramString2);
  }
  
  public static void a(String paramString1, String paramString2, Map<String, String> paramMap) {
    Log.i("INV_ANALYTICS", "logTextMetric with data --> name: " + paramString1 + "value: " + paramString2 + " data: " + paramMap);
    zs.a().a(paramString1, paramString2, paramMap);
  }
  
  public static void b(String paramString1, String paramString2) {
    Log.i("INV_ANALYTICS", "logTextMetric --> name: " + paramString1 + " value: " + paramString2);
    zs.a().a(paramString1, paramString2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\zy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */