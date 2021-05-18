import android.text.TextWatcher;
import android.widget.EditText;

public abstract class hej {
  public static TextWatcher a(String paramString, EditText paramEditText) {
    return new hek(paramString, paramEditText);
  }
  
  public static String a(String paramString) {
    return paramString.replaceAll("[.]", "").replaceAll("[-]", "").replaceAll("[/]", "").replaceAll("[(]", "").replaceAll("[)]", "");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hej.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */