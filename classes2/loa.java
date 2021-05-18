import android.view.View;

class loa implements View.OnClickListener {
  loa(lnt paramlnt) {}
  
  public void onClick(View paramView) {
    loi loi;
    lnt.c(this.a);
    lnt.d(this.a);
    if (lnt.g(this.a) != null && lnt.g(this.a).a().size() == 1) {
      loi loi1 = loi.a(lnt.g(this.a).a().get(0), lnt.a(this.a), ((krz)lnt.g(this.a).a().get(0)).d());
      if (mgt.b(lnt.a(this.a))) {
        frq.d("Seguros_Contratacao_AP_Proposta_Acao", "VerifiquePossibilidades");
        loi = loi1;
      } else {
        loi = loi1;
        if (mgt.d(lnt.a(this.a))) {
          frq.d("Seguros_Contratacao_Vida_Proposta_Acao", "VerifiquePossibilidades");
          loi = loi1;
        } 
      } 
    } else {
      loi = loi.a(lnt.h(this.a).e(), lnt.a(this.a), lnt.h(this.a).e().d());
    } 
    lnt.e(this.a).a(loi, "quotation-is-tag");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\loa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */