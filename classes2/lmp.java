import android.view.View;

class lmp implements View.OnClickListener {
  lmp(lmi paramlmi) {}
  
  public void onClick(View paramView) {
    if (lmi.h(this.a) != null) {
      this.a.dismiss();
      if (mgt.d(lmi.b(this.a).i())) {
        frq.d("Seguros_Contratacao_Vida_Beneficiarios_Acao", "Excluir");
      } else if (mgt.b(lmi.b(this.a).i())) {
        frq.d("Seguros_Contratacao_AP_Beneficiarios_Acao", "Excluir");
      } 
      lmi.h(this.a).a();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lmp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */