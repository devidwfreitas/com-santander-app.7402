import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

final class mhc implements TextWatcher {
  boolean a;
  
  String b = "";
  
  String c;
  
  String d;
  
  mhc(EditText paramEditText, String paramString) {}
  
  public void afterTextChanged(Editable paramEditable) {
    int m;
    String str2;
    this.d = this.e.getText().toString();
    if (this.c.length() <= this.d.length()) {
      m = this.e.getSelectionStart();
      str2 = mhb.a(paramEditable.toString());
      if (this.a) {
        this.b = str2;
        this.a = false;
        return;
      } 
    } else {
      return;
    } 
    char[] arrayOfChar = this.f.toCharArray();
    int n = arrayOfChar.length;
    int i = 0;
    int j = 0;
    int k = 0;
    String str1 = "";
    while (true) {
      if (i < n) {
        char c = arrayOfChar[i];
        if (str2.length() + k > j) {
          if (c == '#') {
            str1 = str1 + str2.charAt(j - k);
          } else {
            str1 = str1 + (new StringBuilder()).append(c);
            k++;
          } 
          j++;
          i++;
          continue;
        } 
      } 
      this.a = true;
      this.e.setText(str1);
      EditText editText = this.e;
      if (m + k > str1.length()) {
        i = str1.length();
      } else {
        i = m + k;
      } 
      editText.setSelection(i);
      return;
    } 
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    this.c = this.e.getText().toString();
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mhc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */