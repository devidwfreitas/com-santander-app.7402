import android.app.Application;
import android.os.Handler;
import android.util.Log;
import com.ca.integration.CaMDOCallback;
import com.ca.integration.CaMDOIntegration;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

public class frq {
  private static String a = "APM";
  
  public static void a() {
    try {
      CaMDOIntegration.uploadEvents(null);
      return;
    } catch (Exception exception) {
      Log.e("CA-AXA", "upload events" + " - " + exception.getMessage(), exception);
      return;
    } 
  }
  
  public static void a(Application paramApplication, boolean paramBoolean) {
    int i;
    if (paramBoolean) {
      i = 2131230740;
    } else {
      i = 2131230729;
    } 
    try {
      InputStream inputStream = paramApplication.getApplicationContext().getResources().openRawResource(i);
      byte[] arrayOfByte = new byte[inputStream.available()];
      inputStream.read(arrayOfByte);
      inputStream.close();
      CaMDOIntegration.setSSLPinningMode(paramApplication, "certificate", arrayOfByte);
      return;
    } catch (IOException iOException) {
      Log.e("Error", iOException.getMessage());
      return;
    } 
  }
  
  public static void a(String paramString) {
    Log.i(a, "stopApplicationTransaction --> transactionName: " + paramString);
    try {
      CaMDOIntegration.stopApplicationTransaction(paramString, null);
      return;
    } catch (Exception exception) {
      Log.e("CA-AXA", "stop application" + " - " + exception.getMessage(), exception);
      return;
    } 
  }
  
  public static void a(String paramString, double paramDouble) {
    Log.i(a, "logNumericMetric --> name: " + paramString + " value: " + String.valueOf(paramDouble));
    try {
      CaMDOIntegration.logNumericMetric(paramString, Double.valueOf(paramDouble), null, null);
      return;
    } catch (Exception exception) {
      Log.e("CA-AXA", "log numeric metric" + " - " + exception.getMessage(), exception);
      return;
    } 
  }
  
  public static void a(String paramString1, String paramString2) {
    Log.i(a, "startApplicationTransaction --> transactionName: " + paramString1 + " serviceName: " + paramString2);
    try {
      CaMDOIntegration.startApplicationTransaction(paramString1, paramString2, null);
      return;
    } catch (Exception exception) {
      Log.e("CA-AXA", "start application" + " - " + exception.getMessage(), exception);
      return;
    } 
  }
  
  private static void a(String paramString1, String paramString2, String paramString3) {
    try {
      CaMDOIntegration.setSessionAttribute(paramString1, paramString2, paramString3);
      return;
    } catch (Exception exception) {
      Log.e("CA-AXA", "setSessionAttribute - " + exception.getMessage(), exception);
      return;
    } 
  }
  
  public static void a(String paramString1, String paramString2, Map<String, String> paramMap) {
    Log.i(a, "logTextMetric with data --> name: " + paramString1 + "value: " + paramString2 + " data: " + paramMap);
    try {
      CaMDOIntegration.logTextMetric(paramString1, paramString2, paramMap, null);
      return;
    } catch (Exception exception) {
      Log.e("CA-AXA", "log text metric with data" + " - " + exception.getMessage(), exception);
      return;
    } 
  }
  
  private static CaMDOCallback b() {
    return (CaMDOCallback)new frr(new Handler());
  }
  
  public static void b(String paramString) {
    Log.i(a, "setSessionCustumerID --> value: " + paramString);
    try {
      a("customerId", "CPF", paramString);
      return;
    } catch (Exception exception) {
      Log.e("CA-AXA", "setSessionCustumerID - " + exception.getMessage(), exception);
      return;
    } 
  }
  
  public static void b(String paramString, double paramDouble) {
    Log.i(a, "setSessionAttributeTypeDouble --> name: " + paramString + " value: " + String.valueOf(paramDouble));
    try {
      a("double", paramString, String.valueOf(paramDouble));
      return;
    } catch (Exception exception) {
      Log.e("CA-AXA", "setSessionAttributeTypeDouble - " + exception.getMessage(), exception);
      return;
    } 
  }
  
  public static void b(String paramString1, String paramString2) {
    Log.i(a, "stopApplicationTransaction --> transactionName: " + paramString1 + " failure: " + paramString2);
    try {
      CaMDOIntegration.stopApplicationTransaction(paramString1, null);
      return;
    } catch (Exception exception) {
      Log.e("CA-AXA", "stop application" + " - " + exception.getMessage(), exception);
      return;
    } 
  }
  
  public static void c(String paramString1, String paramString2) {
    Log.i(a, "stopApplicationTransactionWithActionMetric --> transactionName: " + paramString1 + " value: " + paramString2);
    try {
      d("Acao", paramString2);
      CaMDOIntegration.stopApplicationTransaction(paramString1, null);
      return;
    } catch (Exception exception) {
      Log.e("CA-AXA", "stop application" + " - " + exception.getMessage(), exception);
      return;
    } 
  }
  
  public static void d(String paramString1, String paramString2) {
    Log.i(a, "logTextMetric --> name: " + paramString1 + " value: " + paramString2);
    try {
      CaMDOIntegration.logTextMetric(paramString1, paramString2, null, null);
      return;
    } catch (Exception exception) {
      Log.e("CA-AXA", "log text metric" + " - " + exception.getMessage(), exception);
      return;
    } 
  }
  
  public static void e(String paramString1, String paramString2) {
    Log.i(a, "setSessionAttributeTypeText --> name: " + paramString1 + " value: " + paramString2);
    try {
      a("string", paramString1, paramString2);
      return;
    } catch (Exception exception) {
      Log.e("CA-AXA", "setSessionAttributeTypeText - " + exception.getMessage(), exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\frq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */