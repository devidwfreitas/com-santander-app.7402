import android.text.Editable;

public class gul extends guk {
  private boolean a = false;
  
  private String b = "";
  
  public gul() {
    super("F");
  }
  
  protected String a(String paramString) {
    return nai.b(paramString);
  }
  
  protected void a(Editable paramEditable) {
    if (!this.a) {
      super.a(paramEditable);
      return;
    } 
    this.a = false;
    paramEditable.replace(0, paramEditable.length(), this.b);
    super.a(paramEditable);
  }
  
  public void b(String paramString) {
    boolean bool;
    if (!paramString.isEmpty()) {
      bool = true;
    } else {
      bool = false;
    } 
    this.a = bool;
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    if (this.a && paramInt3 > 0)
      this.b = paramCharSequence.subSequence(paramInt1, paramInt1 + paramInt3).toString(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gul.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */