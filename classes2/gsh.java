import android.text.Editable;
import android.text.TextWatcher;
import com.santander.app.components.view.appbarsearchview.SearchViewAppBar;

public class gsh implements TextWatcher {
  public gsh(SearchViewAppBar paramSearchViewAppBar) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    SearchViewAppBar.a(this.a, paramCharSequence);
    SearchViewAppBar.b(this.a, paramCharSequence);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gsh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */