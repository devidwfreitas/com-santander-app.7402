import android.view.View;

class lnw implements View.OnClickListener {
  lnw(lnt paramlnt) {}
  
  public void onClick(View paramView) {
    lnt.b(this.a);
    lnt.c(this.a);
    lnt.d(this.a);
    if (mgt.b(lnt.a(this.a))) {
      frq.d("Seguros_Contratacao_AP_Proposta_Acao", "Avancar");
      lnt.e(this.a).a(new lnx(this), new lny(this));
      return;
    } 
    if (mgt.d(lnt.a(this.a)))
      frq.d("Seguros_Contratacao_Vida_Proposta_Acao", "Avancar"); 
    loc loc = loc.a();
    lnt.e(this.a).a(loc, "question-tag");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lnw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */