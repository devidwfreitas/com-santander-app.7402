import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

final class mws implements TextWatcher {
  private boolean c;
  
  private String d = "";
  
  mws(mwq parammwq, EditText paramEditText) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    String str = mwr.a(paramCharSequence.toString());
    switch (mwt.a[this.a.ordinal()]) {
      default:
        paramCharSequence = "###.###.###-##";
        if (this.c) {
          this.d = str;
          this.c = false;
          return;
        } 
        break;
      case 2:
        paramCharSequence = "##.###.###/####-##";
        if (this.c) {
          this.d = str;
          this.c = false;
          return;
        } 
        break;
    } 
    char[] arrayOfChar = paramCharSequence.toCharArray();
    paramInt3 = arrayOfChar.length;
    paramInt2 = 0;
    paramCharSequence = "";
    for (paramInt1 = 0;; paramInt1++) {
      if (paramInt1 < paramInt3) {
        char c = arrayOfChar[paramInt1];
        if ((c != '#' && str.length() > this.d.length()) || (c != '#' && str.length() < this.d.length() && str.length() != paramInt2)) {
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mws.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */