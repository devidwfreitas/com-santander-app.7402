import android.text.TextWatcher;
import android.widget.EditText;

public class mhb {
  public static TextWatcher a(EditText paramEditText) {
    paramEditText.setText("0,00");
    paramEditText.setSelection("0,00".length());
    return new mhd(paramEditText);
  }
  
  public static TextWatcher a(String paramString, EditText paramEditText) {
    return new mhc(paramEditText, paramString);
  }
  
  public static TextWatcher a(String paramString1, String paramString2, EditText paramEditText) {
    return new mhe(paramEditText, paramString1, paramString2);
  }
  
  public static String a(String paramString) {
    return paramString.replaceAll("[.]", "").replaceAll("[-]", "").replaceAll("[/]", "").replaceAll("[(]", "").replaceAll("[)]", "");
  }
  
  private static String c(String paramString) {
    String str = paramString;
    if (paramString.substring(0, 1).equals("0"))
      str = paramString.substring(1, paramString.length()); 
    return str;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mhb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */