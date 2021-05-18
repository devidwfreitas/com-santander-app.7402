import android.util.Log;

class ui implements tj {
  ui(ue paramue) {}
  
  public void a(abv paramabv) {
    tm tm = (tm)paramabv;
    if (tm != null && tm.a() == null) {
      Log.d("InvestimentoV2", "portifolio invalido");
      ue.f(this.a);
      return;
    } 
    if (tm != null && tm.b() != null && !tm.b().isEmpty()) {
      ue.a(this.a, new acg());
      ue.g(this.a).f(tm.d());
      if (te.a) {
        ue.a(this.a, tm);
        return;
      } 
      ue.h(this.a).setVisibility(0);
      ue.i(this.a).setVisibility(0);
      ue.j(this.a).setVisibility(8);
      ue.b(this.a, tm);
      return;
    } 
    if (te.a) {
      ue.k(this.a).setImageResource(kz.group);
      ue.l(this.a).setText("POUPANÇA");
      ue.m(this.a).setText(lg.det_sub_poupanca_titulo_empty);
      ue.n(this.a).setText(lg.det_sub_poupanca_subTitulo_empty);
    } else {
      ue.j(this.a).setVisibility(8);
      ue.o(this.a).setVisibility(8);
      ue.p(this.a).setVisibility(0);
    } 
    ue.j(this.a).setVisibility(8);
    ue.o(this.a).setVisibility(8);
    ue.p(this.a).setVisibility(0);
    ue.q(this.a).setOnClickListener(new uj(this));
  }
  
  public void a(aby paramaby) {
    Log.d("InvestimentoV2", "portifolio service error: " + paramaby);
    if (te.a) {
      ue.r(this.a);
      return;
    } 
    ue.f(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar\\ui.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */