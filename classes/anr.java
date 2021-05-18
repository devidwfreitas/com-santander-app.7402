import android.text.Editable;
import android.text.TextWatcher;
import br.com.santander.uisdk.search.presentation.SantanderViewSearchActivity;
import java.util.Locale;

public class anr implements TextWatcher {
  public anr(SantanderViewSearchActivity paramSantanderViewSearchActivity) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    paramCharSequence = SantanderViewSearchActivity.a(this.a).getText().toString().toLowerCase(Locale.getDefault());
    SantanderViewSearchActivity.c(this.a).a((String)paramCharSequence, SantanderViewSearchActivity.b(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\anr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */