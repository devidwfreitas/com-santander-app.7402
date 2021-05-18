import android.text.TextUtils;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;

public class kui {
  public static final String a = "0";
  
  public static final String b = "20";
  
  public static final String c = "1";
  
  public static final String d = "90";
  
  public static boolean a(String paramString) {
    return (paramString != null && paramString.replace(" ", "").equalsIgnoreCase("0"));
  }
  
  public static boolean b(String paramString) {
    return (paramString != null && paramString.replace(" ", "").equalsIgnoreCase("90"));
  }
  
  public static boolean c(String paramString) {
    return (paramString != null && paramString.replace(" ", "").equalsIgnoreCase("1"));
  }
  
  public static boolean d(String paramString) {
    return (paramString != null && paramString.replace(" ", "").equalsIgnoreCase("20"));
  }
  
  public static boolean e(String paramString) {
    if (!TextUtils.isEmpty(paramString)) {
      Iterator<?> iterator = (new LinkedList(Arrays.asList((Object[])new String[] { "1", "0", "90", "20" }))).iterator();
      while (iterator.hasNext()) {
        if (((String)iterator.next()).equalsIgnoreCase(paramString))
          return true; 
      } 
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kui.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */