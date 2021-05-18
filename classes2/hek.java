import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

final class hek implements TextWatcher {
  private boolean c;
  
  private String d = "";
  
  hek(String paramString, EditText paramEditText) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    paramInt2 = 0;
    String str = hej.a(paramCharSequence.toString());
    paramCharSequence = "";
    if (this.c) {
      this.d = str;
      this.c = false;
      return;
    } 
    char[] arrayOfChar = this.a.toCharArray();
    paramInt3 = arrayOfChar.length;
    for (paramInt1 = 0;; paramInt1++) {
      if (paramInt1 < paramInt3) {
        char c = arrayOfChar[paramInt1];
        if (c != '#' && str.length() > this.d.length()) {
          paramCharSequence = paramCharSequence + c;
        } else {
          try {
            String str1 = paramCharSequence + str.charAt(paramInt2);
            paramCharSequence = str1;
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
    this.c = true;
    this.b.setText(paramCharSequence);
    this.b.setSelection(paramCharSequence.length());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hek.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */