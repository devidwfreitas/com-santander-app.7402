import android.view.View;

class lpc implements View.OnClickListener {
  lpc(loz paramloz) {}
  
  public void onClick(View paramView) {
    if (mgt.d(loz.a(this.a).i())) {
      frq.d("Seguros_Contratacao_Vida_Resumo_Acao", "BotaoEditar");
    } else if (mgt.b(loz.a(this.a).i())) {
      frq.d("Seguros_Contratacao_AP_Resumo_Acao", "BotaoEditar");
    } 
    loz.a(this.a).h();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lpc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */