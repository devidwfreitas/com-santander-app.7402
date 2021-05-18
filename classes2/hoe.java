import android.text.Editable;
import android.text.TextWatcher;
import android.view.ViewGroup;
import android.widget.EditText;
import java.util.Calendar;

class hoe extends hof implements TextWatcher {
  hoe(hob paramhob, ViewGroup paramViewGroup) {
    super(paramhob, paramViewGroup);
    this.d.removeTextChangedListener(this);
    this.d.setInputType(2);
    nak.a((EditText)this.d, this);
  }
  
  private String b(String paramString) {
    Calendar calendar = hyx.a(paramString, "dd/MM/yyyy");
    return hyx.c("yyyy-MM-dd'T'HH:mm:ss").format(calendar.getTime());
  }
  
  public void afterTextChanged(Editable paramEditable) {
    try {
      String str = this.d.getText().toString();
      if (str.matches(".*[a-zA-Z]+.*"))
        throw new Exception(); 
    } catch (Exception exception) {
      a("");
      return;
    } 
    a(b((String)exception));
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hoe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */