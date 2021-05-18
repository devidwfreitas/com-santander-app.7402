import android.content.SharedPreferences;
import android.view.View;

class glq implements View.OnClickListener {
  glq(glp paramglp, SharedPreferences.Editor paramEditor) {}
  
  public void onClick(View paramView) {
    if (gln.d(this.b.c)) {
      gln.a(this.b.c, false);
      frq.d("ContaCorrente_Acao", "ExibirSaldo");
      frq.d("Outros_ExibirEOcultar_ContaCorrente_Acao", "Exibir");
      this.a.putBoolean("state_carrossel_conta", false);
      this.a.commit();
    } else {
      gln.a(this.b.c, true);
      frq.d("ContaCorrente_Acao", "git OcultarSaldo");
      frq.d("Outros_ExibirEOcultar_ContaCorrente_Acao", "Ocultar");
      this.a.putBoolean("state_carrossel_conta", true);
      this.a.commit();
    } 
    glp.a(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\glq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */