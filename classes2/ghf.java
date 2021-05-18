import com.santander.app.cartoes.bloqueio.presentation.BloqueioCartaoActivity;

public class ghf extends gmz {
  public ghf(BloqueioCartaoActivity paramBloqueioCartaoActivity) {}
  
  public void a(gmw paramgmw) {
    super.a(paramgmw);
    ghu ghu = paramgmw.e();
    frq.d("Cartoes_Bloqueio_Acao", "SelecionarCartoes");
    BloqueioCartaoActivity.b(this.a).setEnabled(false);
    BloqueioCartaoActivity.c(this.a).setSelection(0);
    BloqueioCartaoActivity.d(this.a).a(ghu);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ghf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */