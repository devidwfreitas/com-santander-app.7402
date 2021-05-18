import android.content.Context;
import android.content.Intent;
import com.santander.app.pagamentos.titulos.presentation.PagamentosCodigoBarrasActivity;

public class hce extends hbt {
  private hbw b;
  
  private hca c;
  
  private hch d;
  
  private hcf e;
  
  private hbz f;
  
  public hce(hbv paramhbv) {
    super(paramhbv);
    this.b = new hbw(paramhbv);
    this.c = new hca(paramhbv);
    this.d = new hch(paramhbv);
    this.e = new hcf(paramhbv);
    this.f = new hbz(paramhbv);
  }
  
  private void b(Context paramContext, hbp paramhbp) {
    if (a()) {
      b(paramContext);
      return;
    } 
    frq.d("DeepLink_PagamentosCodigosBarras", "Elegivel");
    String str = paramhbp.b();
    Intent intent = new Intent(paramContext, PagamentosCodigoBarrasActivity.class);
    intent.putExtra("codigoBarras", str);
    hbu hbu = new hbu(intent);
    this.a.a(paramContext, hbu);
  }
  
  public void a(Context paramContext, hbp paramhbp) {
    String str = paramhbp.a();
    byte b = -1;
    switch (str.hashCode()) {
      default:
        switch (b) {
          default:
            this.a.a(paramContext, null);
            return;
          case 0:
          case 1:
            b(paramContext, paramhbp);
            return;
          case 2:
          case 3:
          case 4:
            this.b.a(paramContext, paramhbp);
            return;
          case 5:
          case 6:
            this.c.a(paramContext, paramhbp);
            return;
          case 7:
          case 8:
          case 9:
            this.d.a(paramContext, paramhbp);
            return;
          case 10:
            this.e.a(paramContext, paramhbp);
            return;
          case 11:
          case 12:
            break;
        } 
        break;
      case -221700189:
        if (str.equals("pagamentocodigobarra"))
          b = 0; 
      case -1195715650:
        if (str.equals("pagamentosCodigosBarras"))
          b = 1; 
      case 651793821:
        if (str.equals("cartoesConsultaFatura"))
          b = 2; 
      case 184433268:
        if (str.equals("cartoesPagamentoFatura"))
          b = 3; 
      case -1474207103:
        if (str.equals("cartoesParcelamentoFatura"))
          b = 4; 
      case -1956842332:
        if (str.equals("emprestimos"))
          b = 5; 
      case 204886344:
        if (str.equals("renegociacao"))
          b = 6; 
      case -2034985529:
        if (str.equals("segurosListaProdutos"))
          b = 7; 
      case -2002643816:
        if (str.equals("segurosAcidentePessoal"))
          b = 8; 
      case -1214929242:
        if (str.equals("segurosVida"))
          b = 9; 
      case -198146835:
        if (str.equals("lojaOnline"))
          b = 10; 
      case 1241187150:
        if (str.equals("contaCorrenteSaldoDetalhado"))
          b = 11; 
      case 1232894390:
        if (str.equals("contaCorrenteExtrato"))
          b = 12; 
    } 
    this.f.a(paramContext, paramhbp);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hce.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */