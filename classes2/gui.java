import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

public class gui implements TextWatcher {
  private EditText a;
  
  private String b;
  
  private String a(String paramString) {
    String str2 = "";
    String str1 = paramString;
    if (paramString.startsWith("-")) {
      str2 = "" + "-";
      str1 = paramString.substring(1);
    } 
    return (str1.length() == 0) ? (str2 + "0,00") : ((str1.length() == 1) ? (str2 + "0,0" + str1) : ((str1.length() == 2) ? (str2 + "0," + str1) : ((str1.length() <= 5) ? (str2 + str1.substring(0, str1.length() - 2) + "," + str1.substring(str1.length() - 2)) : ((str1.length() <= 8) ? (str2 + str1.substring(0, str1.length() - 5) + "." + str1.substring(str1.length() - 5, str1.length() - 2) + "," + str1.substring(str1.length() - 2)) : ((str1.length() <= 11) ? (str2 + str1.substring(0, str1.length() - 8) + "." + str1.substring(str1.length() - 8, str1.length() - 5) + "." + str1.substring(str1.length() - 5, str1.length() - 2) + "," + str1.substring(str1.length() - 2)) : (str2 + str1.substring(0, str1.length() - 11) + "." + str1.substring(str1.length() - 11, str1.length() - 8) + "." + str1.substring(str1.length() - 8, str1.length() - 5) + "." + str1.substring(str1.length() - 5, str1.length() - 2) + "," + str1.substring(str1.length() - 2)))))));
  }
  
  public void a(EditText paramEditText) {
    this.a = paramEditText;
    this.b = paramEditText.getText().toString();
  }
  
  public void afterTextChanged(Editable paramEditable) {
    if (!paramEditable.toString().equals(this.b)) {
      this.a.removeTextChangedListener(this);
      String str = a(String.valueOf(Long.parseLong(paramEditable.toString().replaceAll("[,.]", ""))));
      this.b = str;
      this.a.setText(str);
      this.a.setSelection(str.length());
      this.a.addTextChangedListener(this);
    } 
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gui.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */