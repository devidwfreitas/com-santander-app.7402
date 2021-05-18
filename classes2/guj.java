import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

public class guj implements TextWatcher {
  private static final String b = "R$ ";
  
  protected EditText a;
  
  private String c;
  
  private String d = "";
  
  private boolean e;
  
  public guj() {
    this(false);
  }
  
  public guj(boolean paramBoolean) {
    this.e = paramBoolean;
  }
  
  private String a(String paramString) {
    String str2 = "";
    String str1 = paramString;
    if (paramString.startsWith("-")) {
      str2 = "" + "-";
      str1 = paramString.substring(1);
    } 
    return (str1.length() == 0) ? (str2 + "0,00") : ((str1.length() == 1) ? (str2 + "0,0" + str1) : ((str1.length() == 2) ? (str2 + "0," + str1) : ((str1.length() <= 5) ? (str2 + str1.substring(0, str1.length() - 2) + "," + str1.substring(str1.length() - 2)) : ((str1.length() <= 8) ? (str2 + str1.substring(0, str1.length() - 5) + "." + str1.substring(str1.length() - 5, str1.length() - 2) + "," + str1.substring(str1.length() - 2)) : ((str1.length() <= 11) ? (str2 + str1.substring(0, str1.length() - 8) + "." + str1.substring(str1.length() - 8, str1.length() - 5) + "." + str1.substring(str1.length() - 5, str1.length() - 2) + "," + str1.substring(str1.length() - 2)) : ((str1.length() <= 14) ? (str2 + str1.substring(0, str1.length() - 11) + "." + str1.substring(str1.length() - 11, str1.length() - 8) + "." + str1.substring(str1.length() - 8, str1.length() - 5) + "." + str1.substring(str1.length() - 5, str1.length() - 2) + "," + str1.substring(str1.length() - 2)) : ((str1.length() <= 17) ? (str2 + str1.substring(0, str1.length() - 14) + "." + str1.substring(str1.length() - 14, str1.length() - 11) + "." + str1.substring(str1.length() - 11, str1.length() - 8) + "." + str1.substring(str1.length() - 8, str1.length() - 5) + "." + str1.substring(str1.length() - 5, str1.length() - 2) + "," + str1.substring(str1.length() - 2)) : (str2 + str1.substring(0, str1.length() - 14) + "." + str1.substring(str1.length() - 14, str1.length() - 8) + "." + str1.substring(str1.length() - 8, str1.length() - 5) + "." + str1.substring(str1.length() - 5, str1.length() - 2) + "," + str1.substring(str1.length() - 2)))))))));
  }
  
  public void a(EditText paramEditText) {
    this.a = paramEditText;
    this.c = paramEditText.getText().toString();
  }
  
  public void afterTextChanged(Editable paramEditable) {
    if (!paramEditable.toString().equals(this.c)) {
      Long long_;
      this.a.removeTextChangedListener(this);
      String str3 = paramEditable.toString().replaceAll("[,.]", "");
      String str2 = str3;
      if (this.e)
        str2 = str3.replace("R$ ", "").trim(); 
      if (str2.length() == 20) {
        long_ = Long.valueOf(Long.parseLong(str2.substring(0, 19)));
      } else {
        long_ = Long.valueOf(Long.parseLong((String)long_));
      } 
      str3 = a(String.valueOf(long_));
      String str1 = str3;
      if (this.e)
        str1 = "R$ " + str3; 
      this.c = str1;
      this.a.setText(str1);
      this.a.setSelection(str1.length());
      this.a.addTextChangedListener(this);
    } 
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\guj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */