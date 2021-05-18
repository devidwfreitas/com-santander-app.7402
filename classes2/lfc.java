import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.widget.CompoundButton;

class lfc implements CompoundButton.OnCheckedChangeListener {
  lfc(lex paramlex) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
    if (paramBoolean) {
      lex.b(this.a).setChecked(false);
      lex.d(this.a).setChecked(false);
      frq.d("Seguros_Cancelamento_Vida_AP_CorrerRisco_PopUp_Acao", "PrefiroNaoOpinar");
      paramCompoundButton.setButtonTintList(ContextCompat.getColorStateList((Context)this.a.getActivity(), 2131624409));
      return;
    } 
    paramCompoundButton.setButtonTintList(ContextCompat.getColorStateList((Context)this.a.getActivity(), 2131624410));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lfc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */