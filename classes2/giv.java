import com.santander.app.cartoes.parcelamentofatura.presentation.ParcelamentoFaturaActivity;
import java.util.List;

public class giv extends gmz {
  public giv(ParcelamentoFaturaActivity paramParcelamentoFaturaActivity, List paramList) {}
  
  public void a(gmw paramgmw) {
    boolean bool;
    if (ParcelamentoFaturaActivity.e(this.b) != null) {
      bool = true;
    } else {
      bool = false;
    } 
    ParcelamentoFaturaActivity.a(this.b, false);
    if (ParcelamentoFaturaActivity.j(this.b)) {
      ParcelamentoFaturaActivity.a(this.b, new gjm((gji)this.b));
    } else {
      frq.d("Cartoes_ParcelamentoDeFatura_Acao", "SelecionarCartoes");
    } 
    ParcelamentoFaturaActivity.a(this.b, paramgmw.e());
    ParcelamentoFaturaActivity.a(this.b, this.a.indexOf(paramgmw));
    if (bool) {
      ParcelamentoFaturaActivity.f(this.b).a(ParcelamentoFaturaActivity.e(this.b));
      ParcelamentoFaturaActivity.k(this.b);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\giv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */