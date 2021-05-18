import android.view.View;

class lmq implements View.OnClickListener {
  lmq(lmi paramlmi) {}
  
  public void onClick(View paramView) {
    if (lmi.i(this.a) && lmi.h(this.a) != null) {
      if (mgt.d(lmi.b(this.a).i())) {
        frq.d("Seguros_Contratacao_Vida_Beneficiarios_GrauParentesco_Acao", lmi.g(this.a).getText().toString());
        frq.d("Seguros_Contratacao_Vida_Beneficiarios_PorcentagemParticipacao_Acao", mhj.c(Double.valueOf(lmi.f(this.a).getProgress())).replace(",", "."));
        frq.d("Seguros_Contratacao_Vida_Beneficiarios_Acao", "Salvar");
      } else if (mgt.b(lmi.b(this.a).i())) {
        frq.d("Seguros_Contratacao_AP_Beneficiarios_GrauParentesco_Acao", lmi.g(this.a).getText().toString());
        frq.d("Seguros_Contratacao_AP_Beneficiarios_PorcentagemParticipacao_Acao", mhj.c(Double.valueOf(lmi.f(this.a).getProgress())).replace(",", "."));
        frq.d("Seguros_Contratacao_AP_Beneficiarios_Acao", "Salvar");
      } 
      kpw kpw = new kpw();
      kpw.b(lmi.j(this.a).getText().toString().trim());
      kpw.d(String.valueOf(lmi.f(this.a).getProgress()));
      kpw.c(lmi.g(this.a).getText().toString());
      this.a.dismiss();
      lmi.h(this.a).a(kpw);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lmq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */