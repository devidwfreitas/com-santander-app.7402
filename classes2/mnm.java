import com.santander.app.transferencia.presentation.CadastroFavorecidoActivity;

public class mnm implements gpd {
  public mnm(CadastroFavorecidoActivity paramCadastroFavorecidoActivity) {}
  
  public void a(Object paramObject, int paramInt) {
    frq.d("Transferencia_Acao", "BotaoVerTodosBancos");
    CadastroFavorecidoActivity.a(this.a, (mkq)paramObject);
    if ("99999".equals(CadastroFavorecidoActivity.c(this.a).a()))
      if (CadastroFavorecidoActivity.e(this.a) == null) {
        CadastroFavorecidoActivity.f(this.a).d();
      } else {
        this.a.b();
      }  
    CadastroFavorecidoActivity.g(this.a);
    CadastroFavorecidoActivity.h(this.a);
    CadastroFavorecidoActivity.a(this.a).setEnabled(true);
    CadastroFavorecidoActivity.b(this.a).setEnabled(true);
    CadastroFavorecidoActivity.d(this.a).setEnabled(true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mnm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */