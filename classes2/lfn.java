import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.widget.CompoundButton;

class lfn implements CompoundButton.OnCheckedChangeListener {
  lfn(lfj paramlfj) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
    if (paramBoolean) {
      lfj.f(this.a).setChecked(false);
      lfj.b(this.a).setChecked(false);
      frq.d("Seguros_Cancelamento_Residencia_CorrerRisco_PopUp_Acao", "NaoGostoProduto");
      paramCompoundButton.setButtonTintList(ContextCompat.getColorStateList((Context)this.a.getActivity(), 2131624409));
      return;
    } 
    paramCompoundButton.setButtonTintList(ContextCompat.getColorStateList((Context)this.a.getActivity(), 2131624410));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lfn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */