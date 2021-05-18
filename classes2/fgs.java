import com.santander.app.CadastramentoFacturaActivity;

public class fgs extends gmz {
  public fgs(CadastramentoFacturaActivity paramCadastramentoFacturaActivity) {}
  
  public void a(gmw paramgmw) {
    frq.d("Cartoes_CadastrarFaturaPorEmail_Acao", "SelecionarCartoes");
    if (CadastramentoFacturaActivity.b(this.a) == null) {
      CadastramentoFacturaActivity.a(this.a, paramgmw.e());
      CadastramentoFacturaActivity.e(this.a);
      return;
    } 
    CadastramentoFacturaActivity.a(this.a, paramgmw.e());
    CadastramentoFacturaActivity.b(this.a, CadastramentoFacturaActivity.b(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fgs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */