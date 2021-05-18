import android.view.View;

class lok implements View.OnClickListener {
  lok(loi paramloi) {}
  
  public void onClick(View paramView) {
    if (mgt.b(loi.d(this.a))) {
      loi.b(this.a).a(new lol(this), new lom(this));
      frq.d("Seguros_Contratacao_AP_Proposta_Possibilidades_Acao", "Avancar");
      frq.d("Seguros_Contratacao_AP_Proposta_Possibilidades_ValorCobertura_Acao", loi.c(this.a));
      return;
    } 
    frq.d("Seguros_Contratacao_Vida_Proposta_Possibilidades_ValorCobertura_Acao", loi.c(this.a));
    frq.d("Seguros_Contratacao_Vida_Proposta_Possibilidades_Acao", "Avancar");
    loc loc = loc.a();
    loi.b(this.a).a(loc, "question-tag");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lok.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */