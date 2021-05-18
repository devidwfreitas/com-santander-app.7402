import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

final class mhe implements TextWatcher {
  boolean a;
  
  String b = "";
  
  String c;
  
  mhe(EditText paramEditText, String paramString1, String paramString2) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    paramInt2 = 0;
    if (mhb.a(this.d.getText().toString()).length() <= 10) {
      this.c = this.e;
    } else {
      this.c = this.f;
    } 
    paramCharSequence = mhb.a(paramCharSequence.toString());
    CharSequence charSequence = paramCharSequence;
    if (this.d.length() > 9)
      charSequence = mhb.b((String)paramCharSequence); 
    paramCharSequence = "";
    if (this.a) {
      this.b = (String)charSequence;
      this.a = false;
      return;
    } 
    char[] arrayOfChar = this.c.toCharArray();
    paramInt3 = arrayOfChar.length;
    for (paramInt1 = 0;; paramInt1++) {
      if (paramInt1 < paramInt3) {
        char c = arrayOfChar[paramInt1];
        if (c != '#' && charSequence.length() != this.b.length()) {
          paramCharSequence = paramCharSequence + c;
        } else {
          try {
            String str = paramCharSequence + charSequence.charAt(paramInt2);
            paramCharSequence = str;
            paramInt2++;
            paramInt1++;
            continue;
          } catch (Exception exception) {
            break;
          } 
        } 
      } else {
        break;
      } 
    } 
    this.a = true;
    this.d.setText(paramCharSequence);
    this.d.setSelection(paramCharSequence.length());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mhe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */