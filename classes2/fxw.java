import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.santander.app.cadastrocanal.activity.QuizStartActivity;

class fxw implements TextWatcher {
  boolean a;
  
  fxw(fxv paramfxv, fyd paramfyd) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    boolean bool;
    if (this.a) {
      this.a = false;
      return;
    } 
    if (paramCharSequence.toString().indexOf('/') > -1) {
      bool = true;
    } else {
      bool = false;
    } 
    paramCharSequence = paramCharSequence.toString().replaceAll("[/]", "");
    if (paramInt3 > paramInt2) {
      if (paramCharSequence.length() > 1) {
        fyd.c(this.b).requestFocus();
        paramCharSequence = paramCharSequence.substring(0, 2) + '/' + paramCharSequence.substring(2);
      } 
      CharSequence charSequence = paramCharSequence;
      if (paramCharSequence.length() > 5)
        charSequence = paramCharSequence.substring(0, 5) + '/' + paramCharSequence.substring(5); 
      this.a = true;
      fyd.c(this.b).setText(charSequence);
      fyd.c(this.b).setSelection(fyd.c(this.b).getText().length());
    } else {
      this.a = true;
      fyd.c(this.b).setText(paramCharSequence);
      EditText editText = fyd.c(this.b);
      paramInt3 = paramInt1;
      if (bool)
        paramInt3 = paramInt1 - paramInt2; 
      editText.setSelection(Math.max(0, Math.min(paramInt3, paramCharSequence.length())));
    } 
    QuizStartActivity.f(fyd.c(this.b).getText().toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fxw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */