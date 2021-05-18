import android.text.TextWatcher;
import android.widget.EditText;

public class nar {
  private static final String a = "(##) ####-####";
  
  private static final String b = "(##) #####-####";
  
  private static final String c = "####-####";
  
  private static final String d = "#####-####";
  
  public static TextWatcher a(EditText paramEditText) {
    return new nas(paramEditText);
  }
  
  public static String a(String paramString) {
    return paramString.replaceAll("[^0-9]*", "");
  }
  
  public static String b(String paramString) {
    switch (paramString.length()) {
      default:
        return paramString;
      case 8:
        return paramString.substring(0, 4) + "-" + paramString.substring(5);
      case 9:
        return paramString.substring(0, 5) + "-" + paramString.substring(6);
      case 10:
        return "(" + paramString.substring(0, 2) + ") " + paramString.substring(2, 6) + "-" + paramString.substring(6);
      case 11:
        break;
    } 
    return "(" + paramString.substring(0, 2) + ") " + paramString.substring(2, 7) + "-" + paramString.substring(7);
  }
  
  private static String d(String paramString) {
    String str = "(##) ####-####";
    if (paramString.length() > 11)
      str = "(##) #####-####"; 
    return str;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */