import android.support.v4.content.ContextCompat;
import android.widget.CompoundButton;
import com.santander.app.seguros.ui.widgets.ContractPaymentView;

public class mbi implements CompoundButton.OnCheckedChangeListener {
  public mbi(ContractPaymentView paramContractPaymentView) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
    if (paramBoolean) {
      paramCompoundButton.setButtonTintList(ContextCompat.getColorStateList(this.a.getContext(), 2131624409));
      ContractPaymentView.a(this.a).setChecked(false);
      ContractPaymentView.c(this.a).a();
      ContractPaymentView.a(this.a, 1);
      if (ContractPaymentView.d(this.a) != null)
        ContractPaymentView.d(this.a).a(ContractPaymentView.e(this.a)); 
      return;
    } 
    paramCompoundButton.setButtonTintList(ContextCompat.getColorStateList(this.a.getContext(), 2131624410));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mbi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */