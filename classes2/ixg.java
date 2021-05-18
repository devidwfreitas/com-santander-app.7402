import android.text.Editable;
import android.text.TextWatcher;
import com.santander.app.idsantander.presentation.IdSantanderAtivarCartaoActivity;

public class ixg implements TextWatcher {
  public ixg(IdSantanderAtivarCartaoActivity paramIdSantanderAtivarCartaoActivity) {}
  
  public void afterTextChanged(Editable paramEditable) {
    if (paramEditable.toString().length() == 6) {
      jqi jqi = new jqi();
      jqi.j(IdSantanderAtivarCartaoActivity.b(this.a).getText() + "" + IdSantanderAtivarCartaoActivity.c(this.a).getText());
      IdSantanderAtivarCartaoActivity.d(this.a).a(jqi);
    } 
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ixg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */