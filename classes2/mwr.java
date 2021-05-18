import android.text.TextWatcher;
import android.widget.EditText;

public class mwr {
  private static final String a = "###.###.###-##";
  
  private static final String b = "##.###.###/####-##";
  
  public static TextWatcher a(EditText paramEditText, mwq parammwq) {
    mws mws = new mws(parammwq, paramEditText);
    paramEditText.addTextChangedListener(mws);
    return mws;
  }
  
  public static String a(String paramString) {
    return paramString.replaceAll("[^0-9]*", "");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mwr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */