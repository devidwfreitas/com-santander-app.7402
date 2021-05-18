import android.view.View;

class lfl implements View.OnClickListener {
  lfl(lfj paramlfj) {}
  
  public void onClick(View paramView) {
    if (lfj.a(this.a) != null) {
      if (lfj.b(this.a).isChecked()) {
        frq.d("Seguros_Cancelamento_Residencia_CorrerRisco_PopUp_Acao", "Confirmar");
        this.a.dismiss();
        lfj.a(this.a).a(lfj.c(this.a).getText().toString());
        return;
      } 
    } else {
      return;
    } 
    if (lfj.d(this.a).isChecked()) {
      frq.d("Seguros_Cancelamento_Residencia_CorrerRisco_PopUp_Acao", "Confirmar");
      this.a.dismiss();
      lfj.a(this.a).a(lfj.e(this.a).getText().toString());
      return;
    } 
    if (lfj.f(this.a).isChecked()) {
      frq.d("Seguros_Cancelamento_Residencia_CorrerRisco_PopUp_Acao", "Confirmar");
      this.a.dismiss();
      lfj.a(this.a).a(lfj.g(this.a).getText().toString());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lfl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */