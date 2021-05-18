import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.widget.CompoundButton;

class lfo implements CompoundButton.OnCheckedChangeListener {
  lfo(lfj paramlfj) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
    if (paramBoolean) {
      lfj.b(this.a).setChecked(false);
      lfj.d(this.a).setChecked(false);
      frq.d("Seguros_Cancelamento_Residencia_CorrerRisco_PopUp_Acao", "PrefiroNaoOpinar");
      paramCompoundButton.setButtonTintList(ContextCompat.getColorStateList((Context)this.a.getActivity(), 2131624409));
      return;
    } 
    paramCompoundButton.setButtonTintList(ContextCompat.getColorStateList((Context)this.a.getActivity(), 2131624410));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */