import android.view.View;

class lya implements View.OnClickListener {
  lya(lxx paramlxx) {}
  
  public void onClick(View paramView) {
    lxx.a(this.a, lxx.a(this.a).getText().toString());
    lxx.a(this.a, mhj.u(lxx.b(this.a)));
    if (lxx.c(this.a) != null && lxx.d(this.a) != null && lxx.e(this.a)) {
      switch (lyb.a[lxx.d(this.a).ordinal()]) {
        default:
          return;
        case 1:
          frq.d("Seguros_Sinistro_Acionar_EquipamentoDanificado_PopUp_Equipamento_Acao", lxx.f(this.a).getText().toString());
          frq.d("Seguros_Sinistro_Acionar_EquipamentoDanificado_PopUp_Valor_Acao", lxx.b(this.a));
          kux = new kux();
          kux.a(lxx.f(this.a).getText().toString());
          kux.d(lxx.b(this.a));
          lxx.c(this.a).a(kux);
          this.a.dismiss();
          return;
        case 2:
          break;
      } 
      kux kux = new kux();
      kux.a(lxx.f(this.a).getText().toString());
      kux.d(lxx.b(this.a));
      lxx.c(this.a).a(kux, lxx.g(this.a));
      this.a.dismiss();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lya.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */