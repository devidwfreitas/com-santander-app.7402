import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import java.util.Calendar;

final class nal implements TextWatcher {
  private String c = "";
  
  private String d = "DDMMAAAA";
  
  private Calendar e = Calendar.getInstance();
  
  nal(TextWatcher paramTextWatcher, EditText paramEditText) {}
  
  public void afterTextChanged(Editable paramEditable) {
    if (this.a != null)
      this.a.afterTextChanged(paramEditable); 
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    if (this.a != null)
      this.a.beforeTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3); 
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    this.b.removeTextChangedListener(this);
    String str1 = paramCharSequence.toString().replaceAll("[^\\d.]", "");
    String str2 = this.c.replaceAll("[^\\d.]", "");
    int k = str1.length();
    int i = 2;
    int j;
    for (j = k; i <= k && i < 6; j++)
      i += 2; 
    i = j;
    if (str1.equals(str2))
      i = j - 1; 
    if (str1.length() < 8) {
      str1 = str1 + this.d.substring(str1.length());
    } else {
      int n = Integer.parseInt(str1.substring(0, 2));
      j = Integer.parseInt(str1.substring(2, 4));
      int m = Integer.parseInt(str1.substring(4, 8));
      k = j;
      if (j > 12)
        k = 12; 
      this.e.set(2, k - 1);
      if (m < 1900) {
        j = 1900;
      } else {
        j = m;
        if (m > 2100)
          j = 2100; 
      } 
      this.e.set(1, j);
      m = n;
      if (n > this.e.getActualMaximum(5))
        m = this.e.getActualMaximum(5); 
      str1 = String.format("%02d%02d%02d", new Object[] { Integer.valueOf(m), Integer.valueOf(k), Integer.valueOf(j) });
    } 
    str1 = String.format("%s/%s/%s", new Object[] { str1.substring(0, 2), str1.substring(2, 4), str1.substring(4, 8) });
    j = i;
    if (i < 0)
      j = 0; 
    this.c = str1;
    this.b.setText(this.c);
    EditText editText = this.b;
    if (j >= this.c.length())
      j = this.c.length(); 
    editText.setSelection(j);
    this.b.addTextChangedListener(this);
    if (this.a != null)
      this.a.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nal.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */