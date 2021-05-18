import android.view.View;

class gmb implements View.OnClickListener {
  gmb(gma paramgma) {}
  
  public void onClick(View paramView) {
    paramView.setTag(Boolean.valueOf(gly.c(this.a.c)));
    gly.e(this.a.c).onClick(paramView);
    if (gly.c(this.a.c)) {
      gly.a(this.a.c, false);
      frq.d("Outros_ExibirEOcultar_Poupanca_Acao", "Exibir");
    } else {
      gly.a(this.a.c, true);
      frq.d("Outros_ExibirEOcultar_Poupanca_Acao", "Ocultar");
    } 
    gma.a(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gmb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */