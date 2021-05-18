import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.santander.app.habilitacaointernacional.activity.ListarPaisesHabilitacaoActivity;
import java.util.Locale;

public class ink implements TextWatcher {
  public ink(ListarPaisesHabilitacaoActivity paramListarPaisesHabilitacaoActivity, EditText paramEditText) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    paramCharSequence = this.a.getText().toString().toLowerCase(Locale.getDefault());
    ListarPaisesHabilitacaoActivity.a(this.b).a((String)paramCharSequence);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ink.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */