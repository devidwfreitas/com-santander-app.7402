import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.santander.app.components.view.SantanderEditText;

class hof extends hoc implements TextWatcher {
  protected SantanderEditText d = (SantanderEditText)this.itemView.findViewById(2131756136);
  
  hof(hob paramhob, ViewGroup paramViewGroup) {
    super(paramhob, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968765, paramViewGroup, false));
    this.d.addTextChangedListener(this);
  }
  
  public void afterTextChanged(Editable paramEditable) {
    a(this.d.getText().toString());
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hof.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */