import android.text.Editable;
import android.text.TextWatcher;
import com.santander.app.cadastrocanal.activity.QuizStartActivity;

class fxy implements TextWatcher {
  fxy(fxv paramfxv, fyd paramfyd) {}
  
  public void afterTextChanged(Editable paramEditable) {
    QuizStartActivity.h(fyd.c(this.a).getText().toString());
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    if (fyd.c(this.a).getText().length() == 12);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */