import android.content.Context;
import android.view.View;

class wn implements View.OnClickListener {
  wn(wh paramwh) {}
  
  public void onClick(View paramView) {
    if (wh.c(this.a).d()) {
      aad.a((Context)wh.a(this.a), wh.a(this.a).getString(lg.app_atencao), wh.a(this.a).getString(lg.investir_por_valor_aviso_cheque_especial), lg.app_sim, lg.app_cancelar, new wo(this));
      return;
    } 
    if (wh.c(this.a).e()) {
      aad.a((Context)wh.a(this.a), wh.a(this.a).getString(lg.app_atencao), wh.a(this.a).getString(lg.investir_por_valor_aviso_saldo_insuficiente), wh.a(this.a).getString(lg.app_alterar_aplicacao), new wp(this));
      return;
    } 
    wh.c(this.a).f(true);
    zy.b(this.a.e().getString(lg.tag_name_recomendacao_acao), this.a.e().getString(lg.tag_valor_continuar));
    zs.a().e(wh.a(this.a).getApplicationContext(), wh.c(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\wn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */