import android.view.View;

final class aih implements View.OnClickListener {
  aih(aig paramaig) {}
  
  public final void onClick(View paramView) {
    aig.a(this.a, aig.a(this.a, aig.a(this.a).getText().toString()));
    aig.b(this.a, aig.a(this.a, aig.b(this.a).g()));
    aig.c(this.a, aig.a(this.a, aig.b(this.a).e()));
    if (aig.c(this.a) > aig.d(this.a)) {
      this.a.a(aig.e(this.a).getString(agl.valor_maior_que_maximo));
      aig.f(this.a).setTextColor(aig.e(this.a).getColor(agd.santander_red));
      aig.g(this.a).setImageResource(agd.santander_red);
      return;
    } 
    if (aig.c(this.a) < aig.h(this.a) || aig.c(this.a) == 0) {
      this.a.a(aig.e(this.a).getString(agl.valor_menor_que_minimo));
      aig.f(this.a).setTextColor(aig.e(this.a).getColor(agd.santander_red));
      aig.g(this.a).setImageResource(agd.santander_red);
      return;
    } 
    aig.f(this.a).setTextColor(aig.e(this.a).getColor(17170432));
    aig.g(this.a).setImageResource(17170432);
    int i = aig.a(this.a, aig.b(this.a).k());
    if (aig.c(this.a) != i && aig.c(this.a) >= i) {
      aig.c(this.a);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aih.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */