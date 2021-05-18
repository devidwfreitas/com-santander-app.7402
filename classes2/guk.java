import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

public class guk implements TextWatcher {
  private EditText a;
  
  private String b;
  
  private String c;
  
  public guk(String paramString) {
    this.c = paramString;
  }
  
  private void b(Editable paramEditable) {
    if (!paramEditable.toString().equals(this.b)) {
      this.a.removeTextChangedListener(this);
      String str2 = paramEditable.toString().replaceAll("[,./]", "");
      String str1 = str2;
      if (str2.length() > 15)
        str1 = str2.substring(str2.length() - 15); 
      str1 = nai.d(str1);
      this.b = str1;
      this.a.setText(str1);
      this.a.setSelection(str1.length());
      this.a.addTextChangedListener(this);
    } 
  }
  
  protected String a(String paramString) {
    return nai.c(paramString);
  }
  
  protected void a(Editable paramEditable) {
    if (!paramEditable.toString().equals(this.b)) {
      this.a.removeTextChangedListener(this);
      String str2 = paramEditable.toString().replaceAll("[,.]", "");
      String str1 = str2;
      if (str2.length() > 12)
        str1 = str2.substring(str2.length() - 12); 
      str1 = a(str1);
      this.b = str1;
      this.a.setText(str1);
      this.a.setSelection(str1.length());
      this.a.addTextChangedListener(this);
    } 
  }
  
  public void a(EditText paramEditText) {
    this.a = paramEditText;
    this.b = paramEditText.getText().toString();
  }
  
  public void afterTextChanged(Editable paramEditable) {
    if (this.c.equals("J")) {
      b(paramEditable);
      return;
    } 
    a(paramEditable);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\guk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */