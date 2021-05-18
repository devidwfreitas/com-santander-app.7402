import android.text.TextWatcher;
import android.widget.EditText;

public abstract class nam {
  private static final String a = "###.###.###-##";
  
  private static final String b = "##.###.###/####-##";
  
  public static TextWatcher a(EditText paramEditText, nap paramnap) {
    return new nan(paramnap, paramEditText);
  }
  
  public static String a(String paramString) {
    return paramString.replaceAll("[^0-9]*", "");
  }
  
  private static String c(String paramString) {
    return (paramString.length() > 11) ? "##.###.###/####-##" : "###.###.###-##";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nam.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */