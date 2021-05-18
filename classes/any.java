import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

final class any implements TextWatcher {
  boolean a;
  
  String b = "";
  
  any(String paramString, EditText paramEditText) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    CharSequence charSequence;
    String str = anx.a(paramCharSequence.toString());
    paramCharSequence = "";
    if (this.a) {
      this.b = str;
      this.a = false;
      return;
    } 
    paramInt1 = 0;
    paramInt2 = 0;
    while (true) {
      if (paramInt1 < this.c.length()) {
        char c = this.c.charAt(paramInt1);
        if (c != '#') {
          if (paramInt2 != str.length() || str.length() >= this.b.length())
            paramCharSequence = paramCharSequence + c; 
        } else {
          try {
            charSequence = paramCharSequence + str.charAt(paramInt2);
            paramCharSequence = charSequence;
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
      paramInt1++;
    } 
    if (paramCharSequence.length() > 0) {
      char c = paramCharSequence.charAt(paramCharSequence.length() - 1);
      for (paramInt1 = 0; anx.a(c) && str.length() == this.b.length(); paramInt1 = 1) {
        paramCharSequence = paramCharSequence.substring(0, paramCharSequence.length() - 1);
        c = paramCharSequence.charAt(paramCharSequence.length() - 1);
      } 
      charSequence = paramCharSequence;
      if (paramCharSequence.length() > 0) {
        charSequence = paramCharSequence;
        if (paramInt1 != 0)
          charSequence = paramCharSequence.substring(0, paramCharSequence.length() - 1); 
      } 
    } else {
      charSequence = paramCharSequence;
    } 
    this.a = true;
    this.d.setText(charSequence);
    this.d.setSelection(charSequence.length());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\any.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */